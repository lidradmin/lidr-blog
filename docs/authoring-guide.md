# How to write and publish a blog post

This guide is for anyone on the team. You don't need to know anything technical. If you can fill in a form, you can publish a post.

## 1. One-time setup

You only do this once.

1. Create a free GitHub account at https://github.com/signup. (GitHub is just the place where our posts are stored. You will only use it to log in.)
2. Send your GitHub username to the site owner.
3. Wait for an email invite to **lidr-blog** and accept it. If you can't see it, check your spam folder.

## 2. Write a post

1. Go to https://lidr.io/admin/
2. Click **Login with GitHub** and follow the prompts.
3. Click **Blog posts**, then **New Blog post**.
4. Fill in each box. Every box has a short hint underneath telling you what to put there:
   - **Title**: what the post is called.
   - **Description for Google**: one or two sentences that show under your title in search results.
   - **Publish date**: the day the post goes live.
   - **Last updated**: leave this empty for a new post.
   - **Topics**: pick one to three from the list.
   - **Post**: the main text of your post.
5. The preview on the right shows how your post will look to readers.

If you need a new topic, add it under Settings → **Topics** first, then come back to your post.

## 3. Add photos

1. For the main picture at the top, use **Cover photo**. To put a picture inside the text, click the image button in the toolbar above the **Post** box.
2. Photos can be JPEG, PNG or WebP, up to 15 MB each.
3. On an iPhone, set Settings → Camera → Formats → **Most Compatible**. This makes photos that work everywhere.
4. Turn off location for the camera, or remove the location before you upload. Otherwise your photo could show exactly where it was taken.
5. Always fill in **Describe the cover photo** (or the description for a photo in the text). It helps people who can't see the picture, and it helps Google.

## 4. Publish

1. Click **Publish**, then **Publish now**.
2. Your post will be live at lidr.io/blog/your-post/ in about 3 minutes.

If you get logged out part-way through, don't worry. Your unsaved work stays in your browser, so log in again and carry on.

## 5. Change a live post

1. Open **Blog posts** and click the post you want to change.
2. Make your changes.
3. Set **Last updated** to today's date.
4. Click **Publish**, then **Publish now**.

## 6. Take a post down

1. Open the post.
2. Turn on **Hide this post (draft)**.
3. Click **Publish**, then **Publish now**.

If you want visitors to be sent to a different page instead, fill in **Retire this post and send visitors to** with the address of that page.

Please never delete a post. The editor doesn't let you, on purpose, because deleted pages hurt our ranking on Google.

## 7. "Post needs attention" emails

If something in your post needs fixing, GitHub sends you an email. It is called an Issue.

- If it says a post **isn't live yet**, fix it as soon as you can. Until you do, the old version (or nothing at all) is showing on the site.
- If it says a post is **worth fixing**, the post is live, but it could be better.

To fix it, open the link in the email, go back to the editor, make the change and click **Publish**. The Issue closes by itself once it is fixed.

## 8. Writing with Claude

You can get help drafting a post from Claude. See `docs/claude-instructions.md` for how to set it up, or use the Claude Code skill in `.claude/skills/new-blog-post`.
