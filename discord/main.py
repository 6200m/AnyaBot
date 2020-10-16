# Basic right now, but will add more on request from 6100m
import discord
import json
config = json.parse('discord.config')
bot = commands.Bot(command_prefix=commands.when_mentioned_or("!"),
                   description='anya moderation bot')
@bot.event
async def on_message():
    if message in config['blacklist']:
        message.delete()
bot.run(config['token'])
