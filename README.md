# notifier-scripts
Scripts that use discord.sh to send notifications
You'll need https://github.com/ChaoticWeg/discord.sh.  You also need to install jq (apt install jq)

Create a webhook in discord (channel -> gear icon -> integrations -> View Webhooks -> New Webhook)

Then:

crontab -e

30 4 * * * path/to/notify_apt_updates https://webhoook_url
