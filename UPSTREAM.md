# Upstream dependency

## Humanizer

- Repository: [Aboudjem/humanizer-skill](https://github.com/Aboudjem/humanizer-skill)
- Source file: [`skills/humanizer/SKILL.md`](https://github.com/Aboudjem/humanizer-skill/blob/main/skills/humanizer/SKILL.md)
- Tracked branch: `main`
- Pinned commit: `5bfc2ae4f4f5d01725d5a8ad5e230bb0b5472dde`

The local copy is an intentional Codex adaptation. It preserves the upstream activation model, usage modes, scoring rubric, pattern catalog, and `humanizer-context.md` bring-your-own-voice mechanism. Local changes add Codex-compatible frontmatter and the `technical-writer` voice, which delegates technical prose to `skills/technical-writer-voice/SKILL.md`.

## Update procedure

1. Run `./scripts/check-humanizer-upstream.sh`.
2. If it reports a new commit, inspect the upstream diff:

   ```bash
   git remote add humanizer-upstream https://github.com/Aboudjem/humanizer-skill.git 2>/dev/null || true
   git fetch humanizer-upstream main
   git diff 5bfc2ae4f4f5d01725d5a8ad5e230bb0b5472dde..humanizer-upstream/main -- skills/humanizer/SKILL.md
   ```

3. Port relevant upstream changes into `skills/humanizer/SKILL.md`, preserve the Codex frontmatter and local voice integration, update the pinned commit here, validate, and commit.

Do not overwrite the local file wholesale: that would remove the Codex metadata and `technical-writer` extension.
