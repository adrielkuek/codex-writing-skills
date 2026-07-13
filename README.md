# Codex Writing Skills

Personal Codex skills for humanizing written output and producing rigorous technical prose.

[![Humanizer upstream](https://img.shields.io/github/stars/Aboudjem/humanizer-skill?label=Humanizer%20upstream)](https://github.com/Aboudjem/humanizer-skill)

## Included

- `humanizer`: broad writing cleanup, rewriting, summarization, synthesis, and voice adjustment.
- `technical-writer-voice`: claim-led technical prose for READMEs, LaTeX papers, technical documents, slides, technical blogs, AI/ML, data science, and data analysis.

Humanizer is derived from [Aboudjem/humanizer-skill](https://github.com/Aboudjem/humanizer-skill). Its upstream commit is pinned in [UPSTREAM.md](UPSTREAM.md). Check for upstream changes with:

```bash
./scripts/check-humanizer-upstream.sh
```

GitHub Actions also runs this check weekly and on demand. A failure means upstream moved and the local adaptation needs review.

The local Humanizer includes Codex-compatible metadata and the `technical-writer` voice extension. Review upstream changes before merging them into `skills/humanizer/SKILL.md`.

## Install on another machine

Clone this repository, then copy the skill folders into the global Codex skills directory:

```bash
git clone <your-github-repo-url> ~/.codex/codex-writing-skills
mkdir -p ~/.codex/skills
cp -R ~/.codex/codex-writing-skills/skills/. ~/.codex/skills/
```

To update later:

```bash
git -C ~/.codex/codex-writing-skills pull
cp -R ~/.codex/codex-writing-skills/skills/. ~/.codex/skills/
```

Restart or start a new Codex turn after installation so the skill catalog refreshes.

## Sample usage

Humanizer accepts text directly or reads a file:

```text
/humanizer "Rewrite this draft so it sounds less generic."
/humanizer "Summarize these experiment results for a project update." --voice professional
/humanizer "Turn this table of observations into a concise findings section." --purpose technical
/humanizer --file README.md --voice technical-writer --purpose technical --mode edit
/humanizer "Audit this paper abstract without changing it." --mode detect --score
/humanizer "Rewrite this blog draft with a stronger personal voice." --voice casual --iterate 2
```

### Modes

| Flag | Purpose |
|:-----|:--------|
| `--mode detect` | Report detected writing patterns without rewriting. |
| `--mode rewrite` | Rewrite the text with the selected voice. This is the default. |
| `--mode edit` | Apply minimal edits to a file in place. |

### Flags

| Flag | Values or effect |
|:-----|:-----------------|
| `--mode` | `detect`, `rewrite`, or `edit`. |
| `--voice` | `casual`, `professional`, `technical`, `technical-writer`, `warm`, or `blunt`. |
| `--file` | Read the input from a file; combine with `--mode edit` for in-place editing. |
| `--purpose` | `essay`, `email`, `marketing`, `technical`, or `general`. |
| `--score` | Add a 0-100 AI-tell density score to the output. Lower is more human. |
| `--iterate N` | Repeat detect → rewrite up to `N` times, with a maximum of 3. |
| `--aggressive` | Apply a heavier rewrite with shorter sentences and stronger voice. |

Create `humanizer-context.md` in a project root to provide samples, preferred terms, formatting rules, and banned phrases for a custom voice.

## Local validation

```bash
python3 ~/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/humanizer
python3 ~/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/technical-writer-voice
```
