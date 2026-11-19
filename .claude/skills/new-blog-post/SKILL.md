---
name: new-blog-post
description: Write, check and publish a lidr.io blog post end to end. Use when asked to write, draft or publish a blog post or article for lidr.io.
---

# Publish a lidr.io blog post

Posts go live on https://lidr.io/blog/ about 3 minutes after you push to `main`. Nobody reviews them, so you are the review: follow every step.

## 1. Start clean
```bash
git fetch origin && git worktree add -B post/$(date +%s) ../lidr-blog-post origin/main && cd ../lidr-blog-post
```
Work only in this worktree. You may only create or change `posts/<slug>.md`, files under `images/<slug>/`, and `tags.yml`. Never edit anything else.

## 2. Pick a topic nobody has covered
- Read every file in `posts/` (titles, descriptions, headings) and `tags.yml`.
- Choose a topic and ONE target search phrase that no existing post targets. If the user's topic overlaps an existing post, say so and suggest updating that post instead.

## 3. Write the post: `posts/<slug>.md`
- `<slug>`: lowercase words joined by hyphens, e.g. `photo-evidence-for-snagging`. It becomes the URL forever. Choose carefully.
- Front-matter (exact keys):
```yaml
---
title: 10–70 characters, includes the target phrase
description: 50–160 characters, the sentence Google shows under the title
date: YYYY-MM-DD (today)
tags: [one-to-three, existing-tag-slugs]
---
```
- Optional: `cover: /images/blog/<slug>/<file>.jpg` plus `coverAlt: what the photo shows`. Only use real photos the user gave you; never invent or download images.
- Body: Markdown. Start with the answer, not a preamble. Use `##` and `###` headings (never `#`). Aim for 700–1,400 words.
- At least 2 internal links: one of https://lidr.io/features/ or https://lidr.io/pricing/ (as `/features/` or `/pricing/`), and one related existing post (`/blog/<slug>/`).
- Every image needs alt text: `![what it shows](/images/blog/<slug>/photo.jpg)`.

## 4. Self-review (required)
Read the post back and fix it until all of these are true:
- No invented statistics, studies, quotes, customer names or testimonials. If a number matters, ask the user for the source, or remove it.
- Every claim about Lidr matches the live https://lidr.io/features/ and https://lidr.io/pricing/ pages (fetch them).
- British English, plain and practical. Written for construction site teams, not marketers.
- The target phrase appears in the title, description and first paragraph, naturally.

## 5. Check with the real validator
```bash
./scripts/check.sh
```
It must end with no problems listed. Fix every problem it prints, then run it again.

## 6. Publish
```bash
git add posts images tags.yml
git diff --cached --name-only   # must list ONLY posts/, images/, tags.yml paths
git commit -m "Publish blog post \"<slug>\""
git push origin HEAD:main || { git pull --rebase origin main && ./scripts/check.sh && git push origin HEAD:main; }
```
If the push is rejected twice, stop and tell the user.

## 7. Report
Tell the user the URL (https://lidr.io/blog/<slug>/), that it's live in about 3 minutes, and anything they should add, such as real photos or a customer example. Then remove the worktree: `cd - && git worktree remove ../lidr-blog-post`.
