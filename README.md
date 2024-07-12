[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S310DONO)
# FiveM Mass DV Script

## Description

This FiveM script allows server administrators to despawn (DV) all vehicles in the game at once using a simple command. It includes configurable options such as ACE permissions for access control, a countdown timer before the despawn operation, and the option to clear the chat after the operation to reduce clutter.

## Features

- **Mass Despawn Vehicles Command:** Execute a command to despawn all vehicles in the game.
- **ACE Permissions:** Secure the command with ACE permissions to restrict access.
- **Countdown Timer:** Optional countdown timer before the despawn operation.
- **Clear Chat:** Option to clear chat messages after the operation to remove countdown clutter.

## Configuration

The configuration options are available in the `Config` table within the script.

- `CommandName`: The command to use for the despawn operation (default: `/massdv`).
- `AcePermissionString`: The ACE permission string to control access (default: `AJ:MassDV`).
- `UseAcePermissions`: Enable or disable ACE permissions (default: `true`).
- `CountdownEnabled`: Enable or disable the countdown timer (default: `true`).
- `CountdownDuration`: Duration of the countdown in seconds (default: `10`).
- `ClearChatAfterCleanup`: Enable or disable chat clearing after the operation (default: `true`).

## How to Use

1. **Add the script to your FiveM server:**
   - Drag `AJ_MassDV` to your server's resources folder.

2. **Edit your server configuration:**
   - Add `start AJ_MassDV` to your server configuration file (`server.cfg`).

3. **Configure ACE permissions (if enabled):**
   - Add the ACE permission for your desired group in your server configuration:
     ```
     add_ace group.[GROUP_NAME] AJ.MassDV allow
     ```

4. **Start your server:**
   - Restart your FiveM server or start it if it’s not already running.

5. **Use the command:**
   - Use the configured command (default: `/massdv`) to despawn all vehicles in the game.
