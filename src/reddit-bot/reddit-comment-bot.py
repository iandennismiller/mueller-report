#!/usr/bin/env python

# start with template from /u/doug89
# https://pastebin.com/dkiHGPKJ

import praw

SUBREDDIT_NAME = 'requestabot'
KEYWORDS = ['hunter2', 'lizard']
RESPONSE = 'There is a keyword in your submission!'

USERNAME = ''
PASSWORD = ''
CLIENT_ID = ''
CLIENT_SECRET = ''

USER_AGENT = 'script:reply to keywords in posts:v0.2:written by /u/doug89'


print("Authenticating...")
reddit = praw.Reddit(
    client_id=CLIENT_ID,
    client_secret=CLIENT_SECRET,
    password=PASSWORD,
    user_agent=USER_AGENT,
    username=USERNAME)
print("Authenticaed as {}".format(reddit.user.me()))

print('Starting submission stream...')
for post in reddit.subreddit(SUBREDDIT_NAME).stream.submissions():
    if post.saved:
        continue
    has_keyword = any(k.lower() in post.selftext.lower() for k in KEYWORDS)
    not_self = post.author != reddit.user.me()
    if has_keyword and not_self:
        post.save()
        reply = post.reply(RESPONSE)
        print('http://reddit.com{}'.format(reply.permalink()))
