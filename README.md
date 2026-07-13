# Codex Writing Skills

Personal Codex skills for humanizing written output and producing rigorous technical prose.

## Included

- `humanizer`: broad writing cleanup, rewriting, summarization, synthesis, and voice adjustment.
- `technical-writer-voice`: claim-led technical prose for READMEs, LaTeX papers, technical documents, slides, technical blogs, AI/ML, data science, and data analysis.

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

## Local validation

```bash
python3 ~/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/humanizer
python3 ~/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/technical-writer-voice
```

