import discord
import os
import json

client = discord.Client()

#Import Environmental Variables
environ_file = open('environvars.json', encoding="utf8")
environ_vars = json.load(environ_file)
for data in environ_vars:
    os.environ[data] = environ_vars[data]

@client.event
async def on_ready():
    print(f'We have logged in as {client.user}')


@client.event
async def on_message(message):
    print(f'{message.author.name}: {message.content}')

@client.event
async def on_message_edit(message_before, message_after):
    print(f'{message_before.author.name} has edited the message from: {message_before.content} to {message_after.content}')

@client.event
async def on_message_delete(message):
    print(f'{message.author.name} has deleted the message: {message.content}')

client.run(os.getenv('TOKEN'))
