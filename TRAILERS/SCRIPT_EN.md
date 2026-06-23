# Visual Drops & Cosmetics — detailed trailer script

Target: 50 seconds, 16:9, 60 FPS. Tone: polished item presentation with clear interaction proof.

## Capture preparation

- Use the English release in a clean showcase room.
- Prepare a block item, a flat item, an enchanted/damaged item, a large stack, and the XS Lock Key recipe.
- Leave partial space in one inventory slot and make a separate full-inventory take.
- Setup-only options: `/trigger x1di.lock_key` or `/function x1miya_itemdrop:tool/give_lock_key`.
- Build one removable floor block for the falling-physics shot.

## Timeline

| Time | Picture and camera | Voiceover / on-screen copy | Audio and edit |
| --- | --- | --- | --- |
| 0:00–0:04 | Feature card, then a vanilla-style item drop enters frame. | **“Dropped items should belong in the world.”** | Soft landing sound and slow musical start. |
| 0:04–0:11 | Drop one block item and one flat item. Orbit low around both settled 3D displays. | “Grounded drops receive natural presentation.” | Smooth camera, no fast cut before pose is clear. |
| 0:11–0:17 | Show an enchanted or damaged item tooltip before dropping it, then pick it back up and show the same components. | **“The complete stack is preserved.”** | Tooltip open/close clicks aligned. |
| 0:17–0:24 | Right-click a displayed stack with enough room for only part of it. Show the remainder staying visible. | “Pick up exactly what the inventory can hold.” | One pickup sound, then hold on remaining count. |
| 0:24–0:29 | Full-inventory attempt; show the real feedback and unchanged display. | “A full inventory leaves the item safe on the ground.” | Short denied cue. |
| 0:29–0:35 | Insert `crafting-en.png`, craft the XS Lock Key, then hold it in hand. | **“Craft a key for valuables.”** | Lime accent and recipe result sound. |
| 0:35–0:41 | Right-click a valuable display with the key. Capture green feedback and the locked state; unlock in a second close shot with red feedback. | “Lock against despawning. Unlock when ready.” | Two distinct color/audio beats. |
| 0:41–0:46 | Break the support block. Follow the item as falling physics returns and it settles again. | “Remove the floor—and gravity takes over.” | Camera follows vertically, then settles. |
| 0:46–0:50 | Wide decorated loot-room shot, then feature card. | **“Visual Drops & Cosmetics — make every drop visible.”** | Clean brand resolve. |

## Accuracy rules

- Pickup is demonstrated with right-click, not walk-over collection.
- Partial pickup visibly leaves a remainder.
- Do not claim compatibility with other datapacks that replace dropped item entities.
- A locked item is described as protected from despawning, not protected from every possible command or administrator action.
- Use the release's actual green/red feedback.

## Cleanup after filming

Pick up important items. For a disposable test scene, operators may remove internal entities with:

```mcfunction
kill @e[tag=x1di.display]
kill @e[tag=x1di.hitbox]
kill @e[tag=x1di.internal]
```

## Deliverables

- Full English trailer.
- 15-second visual cut: block + flat pose → partial pickup → lock → falling physics → title.
- Thumbnail candidate: locked valuable display and XS Lock Key.
