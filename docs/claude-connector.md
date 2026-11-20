# Publishing with Claude (no copy and paste)

The **Lidr Blog connector** lets Claude write, check and publish a post — with
your photos — straight to lidr.io, as you. You don't need the editor.

## One-time setup

1. You need a GitHub account that's been invited to **lidr-blog** (see the
   authoring guide, section 1).
2. In Claude (claude.ai): open **Settings → Plugins**, click **Add → Add
   custom connector** (on some accounts it's **Settings → Customize →
   Connectors → Add**).
   - Name: `Lidr Blog`
   - URL: `https://mcp.lidr.io/mcp`
   - Click **Add**. A Lidr page opens: click **Continue with GitHub**, then
     **Authorize** if GitHub asks. You're sent back to Claude and "Lidr Blog"
     appears in your list.
   - On a company Claude plan (Team/Enterprise), only an owner of that plan
     can add custom connectors. Use a personal Claude account, or ask them.
   - The Free plan allows one custom connector.
3. **For photos:** Settings → **Capabilities** → under **Create and edit
   files**, turn on **Use the internet while making files**, then **Allowed
   websites → Manage**, type `mcp.lidr.io` and click **Add**. Start a new chat
   after changing this. Without it, Claude publishes the post without your
   photo and tells you.

## Writing a post

Start a new chat, attach any photos, and ask, for example:

> Write and publish a post about how to photograph a snagging walkthrough for
> site managers. Target search phrase: snagging photos. Use the attached photo
> as the cover.

Claude will look at the existing posts, write the post, check it against the
site's rules, remove the location from your photos, upload them, publish, and
give you the link. It's live in about 3 minutes.

The first time, Claude asks permission to use each Lidr Blog tool. Choose
**Always allow** if you're happy for it to publish without asking each time.

**Nobody reviews posts before they go live.** Read what Claude wrote before
you let it publish, or ask it to show you the post first.

## Changing or taking down a post

- "Update the snagging photos post: add a section on …" — Claude republishes
  it with today's "last updated" date.
- "Hide the post about …" — it disappears from lidr.io. Nothing is deleted.

## If something goes wrong

- **"You can't publish to the blog yet"** when connecting: you haven't been
  invited to lidr-blog, or haven't accepted the invite.
- **Photos didn't upload:** check the code execution network setting in step 3.
  Claude publishes without the photo and tells you.
- **"Reconnect the Lidr Blog connector":** go to Settings → Customize →
  Connectors → Lidr Blog → Connect.
- Problems found after publishing arrive as a GitHub email, "Post needs
  attention", exactly as with the editor.
