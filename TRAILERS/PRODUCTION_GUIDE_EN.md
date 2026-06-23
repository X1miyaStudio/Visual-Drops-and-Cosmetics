# X1miyaStudio trailer production guide

## Shared visual standard

- 16:9 at 1920×1080 or 2560×1440, 60 FPS.
- Final length: 40–55 seconds per project.
- Record Minecraft Java 1.21.11 without client mods that alter the demonstrated mechanic.
- Avoid shaders so the trailer honestly represents a server-side vanilla datapack.
- Use FOV 65–75 and keep it consistent across comparison shots.
- Hide the HUD unless action-bar feedback, advancements, inventory, or commands are the subject.
- Editorial palette: near-black, white, and neon green/lime.
- Use `feature-en.png` and `feature-ru.png` as title/end cards. Do not recolor or redesign `icon.png`.

## World preparation

1. Create a separate copy of the test world for each project.
2. Leave only the datapack being filmed unless interaction between projects is intentionally tested.
3. Run `/reload` and check for errors before recording.
4. Use a disposable backed-up world for Explosion Item v2.
5. Prepare a clean demonstration stage and one natural gameplay scene.
6. Record every important action twice: one static take and one slow camera move.

## Audio and rights

- Record game audio separately from voiceover.
- Use music licensed for commercial promotional use and retain its license record.
- Keep voiceover 4–6 dB above music.
- Preserve recognizable real sounds at the key mechanic moment.
- Master at 48 kHz without clipping.

## Localization

- Use English for the main Modrinth trailer.
- Reuse clean gameplay shots for Russian, but replace voiceover, captions, and visible UI where necessary.
- Keep captions inside a 70-pixel safe margin at 1080p.
- Limit each on-screen statement to two short lines.

## Export

- MP4, H.264 High Profile, Rec.709.
- 1080p60: 16–24 Mbps. 1440p60: 28–45 Mbps.
- AAC audio, 48 kHz, 320 kbps.
- File names: `X1miyaStudio_ProjectName_Trailer_EN_1080p60.mp4` and the matching `RU` version.

## Final QA

- [ ] Every visible feature exists in the release ZIP.
- [ ] Only Minecraft 1.21.11 compatibility is claimed.
- [ ] Commands used for capture are not presented as required survival gameplay.
- [ ] Explosion Item v2 retains the backup warning.
- [ ] Music, fonts, and third-party assets have recorded usage rights.
- [ ] Final card shows X1miyaStudio without implying Mojang, Microsoft, or Modrinth endorsement.
