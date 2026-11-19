# How to write and publish a blog post

This guide is for anyone on the team. You don't need to know anything technical. If you can fill in a form, you can publish a post.

## 1. One-time setup

You only do this once.

1. Create a free GitHub account at https://github.com/signup. (GitHub is where our posts are stored. You will log in with it, and it is also where you will read "Post needs attention" emails and Issues.) GitHub will ask you to turn on two-factor authentication. Follow its steps.
2. Send your GitHub username to the site owner.
3. Wait for an email invite to **lidr-blog** and accept it. If you can't see it, check your spam folder. Invites expire after 7 days. If yours has expired, accept it at https://github.com/lidradmin/lidr-blog/invitations or ask the site owner to send a new one.

## 2. Write a post

1. Go to https://lidr.io/admin/
2. Click **Login with GitHub** and follow the prompts. The first time, a pop-up shows an "Authorize Lidr Blog Editor" screen. Click **Authorize**. If nothing appears, allow pop-ups for the site (in Safari: Settings → Websites → Pop-up Windows).
3. Click **Blog posts**, then **New Blog post**.
4. Fill in each box. Every box has a short hint underneath telling you what to put there:
   - **Title**: what the post is called.
   - **Description for Google**: one or two sentences that show under your title in search results.
   - **Publish date**: the date shown on the post, usually today. The post goes live as soon as you publish it, whatever date you put here.
   - **Last updated**: leave this empty for a new post.
   - **Topics**: pick one to three from the list.
   - **Post**: the main text of your post.
5. The preview on the right shows how your post will look to readers.

If you need a new topic, add it first: go to Settings → **Topics** → **Add Topics**, fill in **Name** and **Web address part** (lowercase words joined by hyphens, for example `site-photos`), then click **Publish**, then **Publish now**. Then come back to your post.

## 3. Add photos

1. For the main picture at the top, use **Cover photo**. To put a picture inside the text, click the image button in the toolbar above the **Post** box.
2. Photos can be JPEG, PNG or WebP, up to 15 MB each.
3. On an iPhone, set Settings → Camera → Formats → **Most Compatible**. This makes photos that work everywhere.
4. Turn off location for the camera, or remove the location before you upload. Otherwise your photo could show exactly where it was taken.
5. Always fill in **Describe the cover photo** (or, for a photo inside the text, the box called **Alt Text**). It helps people who can't see the picture, and it helps Google.

## 4. Publish

1. Click **Publish**, then **Publish now**.
2. Your post will be live at lidr.io/blog/your-post/ in about 3 minutes.

If you get logged out part-way through, don't worry. Unsaved work is kept only in the same browser on the same device. Log in again, reopen the post, and the editor offers to restore it.

## 5. Change a live post

1. Open **Blog posts** and click the post you want to change.
2. Make your changes.
3. Set **Last updated** to today's date.
4. Click **Publish**, then **Publish now**.

## 6. Take a post down

1. Open the post.
2. Turn on **Hide this post (draft)**.
3. Click **Publish**, then **Publish now**.

If you want visitors to be sent to a different page instead, fill in **Retire this post and send visitors to** with the part of the address after lidr.io, for example `/blog/another-post/`.

Please never delete a post. The editor doesn't let you, on purpose, because deleted pages hurt our ranking on Google.

## 7. "Post needs attention" emails

If something in your post needs fixing, GitHub sends you an email. It is called an Issue.

- If it says a post **isn't live yet**, fix it as soon as you can. Until you do, the old version (or nothing at all) is showing on the site.
- If it says a post is **worth fixing**, the post is live, but it could be better.

To fix it, open the link in the email, go back to the editor, make the change and click **Publish**. If your change didn't go live, you will also get a GitHub email saying "Run failed: Blog check". That is expected, so follow the Issue. The Issue closes after your next **Publish**, once the problem is fixed.

## 8. Writing with Claude

You can get help drafting a post from Claude. Before you publish a Claude draft, delete or fill in anything in square capitals, such as [NEEDS SOURCE]. lidr.io won't publish a post that still has one, and you'll get a "Post needs attention" Issue instead. For Claude.ai, follow https://github.com/lidradmin/lidr-blog/blob/main/docs/claude-instructions.md. The Claude Code route is for technical users: see `docs/claude-code.md`.
