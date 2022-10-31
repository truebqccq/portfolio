from datetime import datetime, timedelta
from cal_setup import get_calendar_service
from google_input_parser import parse_input
# https://karenapp.io/articles/how-to-automate-google-calendar-with-python-using-the-calendar-api/
# Red: Gen. Ed.
# Navy Blue: ICS
# Dark Green: Math
# Purple: Stats

DAY_OF_WEEK = {'MONDAY': 0, 'MO': 0, 'MON': 0,
               'TUESDAY': 1, 'TU': 1, 'TUE': 1,
               'WEDNESDAY': 2, 'WE': 2, 'WED': 2,
               'THURSDAY': 3, 'TH': 3, 'THU': 3,
               'FRIDAY': 4, 'FR': 4, 'FRI': 4,
               'SATURDAY': 5, 'SA': 5, 'SAT': 5,
               'SUNDAY': 6, 'SU': 6, 'SUN': 6}
COLORS = {'RED': 11, 'BLUE': 9, 'PURPLE': 3, 'GREEN': 10, 'ORANGE': 6}

def main():
    quarter_start = _date_input('Quarter')
    final_start = _date_input('Final')
    
    while True:
        line = input('Enter Event Type (C/F):')
        if line=='' or line.startswith('&'):
            print('Goodbye')
            break
        elif line.upper().startswith('C'):
            _create_class(quarter_start)
        elif line.upper().startswith('F'):
            _create_final(final_start)

def _create_class(start_date: datetime):
    while True:
        title = input('Class Name: ')
        if title=='':
            print('Class Creation Finished')
            return
        start_time = input('Start Time: ')
        if start_time=='':
            print('Class Creation Finished')
            return
        end_time = input('End Time: ')
        if end_time=='':
            print('Class Creation Finished')
            return

        start_time = _time_convert(start_time)
        end_time = _time_convert(end_time)

        class_days = input('Class Recurrence Dates: ')
        days = _days_convert(class_days)
        freq = ','.join(d for d in days)

        description = input('Class Location: ')
        color = COLORS[input('Class Color: ').strip().upper()]
        recurrence = [f'RRULE:FREQ=WEEKLY;WKST=SU;BYDAY={freq};COUNT={10*len(days)}']
        final_date = _find_start_day(start_date, DAY_OF_WEEK[days[0]])
        start = datetime(final_date.year, final_date.month, final_date.day, start_time[0], start_time[1]).isoformat()
        end = datetime(final_date.year, final_date.month, final_date.day, end_time[0], end_time[1]).isoformat()
        #print(title, description, start, end, recurrence)
        _create_event(title, description, start, end, color, recurrence)

def _create_final(start_date: datetime):
    while True:
        title = input('Final Exam Class: ')
        if title=='':
            print('Final Creation Finished')
            return
        elif 'FINAL' not in title.upper():
            title+=' Final'
        start_time = input('Start Time: ')
        if start_time=='':
            print('Final Creation Finished')
            return
        end_time = input('End Time: ')
        if end_time=='':
            print('Final Creation Finished')
            return

        start_time = _time_convert(start_time)
        end_time = _time_convert(end_time)
        class_days = input('Final Day of Week: ')
        days = _days_convert(class_days)
        final_date = _find_start_day(start_date, DAY_OF_WEEK[days[0]])

        description = input('Class Location: ')
        color = COLORS[input('Class Color: ').strip().upper()]
        start = datetime(final_date.year, final_date.month, final_date.day, start_time[0], start_time[1]).isoformat()
        end = datetime(final_date.year, final_date.month, final_date.day, end_time[0], end_time[1]).isoformat()
        print(title, description, start, end, [])
        _create_event(title, description, start, end, color, [])

def _days_convert(days: str):
    if ', ' in days:
        days_list = days.split(', ')
    elif ',' in days:
        days_list = days.split(',')
    elif ' ' in days:
        days_list = days.split(' ')
    elif 't' not in days:
        days_list = list(days)
    else:
        days_list=[days]
    for i in range(len(days_list)):
        days_list[i]=days_list[i].upper()
        if days_list[i]=='M':
            days_list[i]='MO'
        elif days_list[i]=='W':
            days_list[i]='WE'
        elif days_list[i]=='F':
            days_list[i]='FR'
        else:
            days_list[i]=days_list[i][0:2]
    return days_list

def _time_convert(time: str):
    pm = 'p' in time
    time = time.rstrip('pm')
    time_list = [int(n) for n in time.split(':')]
    if pm:
        time_list[0]%=12
        time_list[0]+=12
    return time_list

def _find_start_day(date: datetime, day) -> datetime:
    return date + timedelta(days=(day-date.weekday()+7)%7)

def _date_input(type: str):
    date_input = input(f'Enter {type} Start Date (YYYY/MM/DD):')
    if date_input=='' or date_input.startswith('&'):
        print(f'{type} start date has been left blank')
        return None
    elif date_input.upper()=='TODAY':
        d = datetime.now().date()
        start_date = datetime(d.year, d.month, d.day)
    else:
        parsed_date = parse_input(date_input, ['I', 'I', 'I'])
        start_date = datetime(parsed_date[0], parsed_date[1], parsed_date[2])
    return start_date

def _create_event(title, description, start, end, color, recurrence):
    service = get_calendar_service()
    event_result = service.events().insert(calendarId='primary',
        body={
            'summary': title,
            'description': description,
            'start': {'dateTime': start, 'timeZone': 'America/Los_Angeles'},
            'end': {'dateTime': end, 'timeZone': 'America/Los_Angeles'},
            'recurrence': recurrence,
            'reminders': {'useDefault': False, 'overrides': [{'method': 'popup', 'minutes': 10},]},
            'colorId': color
            }
    ).execute()

    print('created event')
    print('id: ', event_result['id'])
    print('summary: ', event_result['summary'])
    print('starts at: ', event_result['start']['dateTime'])
    print('ends at: ', event_result['end']['dateTime'])

if __name__ == '__main__':
    main()