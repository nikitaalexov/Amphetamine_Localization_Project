//
//  AmphHelpMessages.m
//  Amphetamine
//
//  Created by William Gustafson on 10/29/18.
//  Copyright © 2018 William C. Gustafson. All rights reserved.
//

#import "AmphHelpMessages.h"

@implementation AmphHelpMessages

+ (NSMutableArray *) getMessage : (long) messageSet
{
    NSMutableArray *messageContent = [[NSMutableArray alloc] init];
    
    if (messageSet == 1)
    {
        [messageContent addObject:@"Quick-Start a Session"];
        [messageContent addObject:@"Choose whether left clicking (also known as primary clicking) or right clicking (also known as secondary clicking) on Amphetamine's image in the menu bar brings up Amphetamine’s menu or starts/ends a session."];
    }
    else if (messageSet == 2)
    {
        [messageContent addObject:@"Launch and Wake Behavior"];
        [messageContent addObject:@"• Launch Amphetamine at Login\nCheck this box if you want Amphetamine to automatically launch when you log in to your Mac.\n\n• Start Session When Amphetamine Launches\nCheck this box if you want Amphetamine to automatically start a new session when the application launches.\n\n• Start Session After Waking From Sleep\nCheck this box if you want Amphetamine start a new session whenever your Mac wakes from sleep. If a session is already running, a new session will not be started."];
    }
    else if (messageSet == 3)
    {
        [messageContent addObject:@"Other"];
        if (@available(macOS 10.14, *))
        {
            [messageContent addObject:@"• Hide Amphetamine in the Dock\nCheck this box to hide Amphetamine’s icon in the Dock. Make sure to also turn off macOS's 'Show recent apps in Dock' feature in  → System Preferences → Dock\n\n• Use Color to Represent Status in Quick Preferences\nCheck this box to use a colored circle to represent the status of each item in Quick Preferences. Green = ON, Red = OFF. Uncheck this box to use a non-color based image: a checkmark for ON, and an X for OFF.\n\nClick the Reset Warnings and Dialogs button to clear any 'do not show again' flags on warning messages and other dialogs.\n\nClick the Reset All Preferences button to return Amphetamine to a default state (all preferences, including Triggers will be lost)."];
        }
        else
        {
            [messageContent addObject:@"• Hide Amphetamine in the Dock\nCheck this box to hide Amphetamine’s icon in the Dock.\n\n• Use Color to Represent Status in Quick Preferences\nCheck this box to use a colored circle to represent the status of each item in Quick Preferences. Green = ON, Red = OFF. Uncheck this box to use a non-color based image: a check mark for ON, and an X for OFF.\n\nClick the Reset Warnings and Dialogs button to clear any 'do not show again' flags on warning messages and other dialogs.\n\nClick the Reset All Preferences button to return Amphetamine to a default state (all preferences, including Triggers will be lost)."];
        }
    }
    else if (messageSet == 4)
    {
        [messageContent addObject:@"Default Duration"];
        [messageContent addObject:@"The Default Duration is used throughout Amphetamine when a session duration is not otherwise provided. Examples include when a session starts at launch and when clicking Amphetamine's image in the system menu bar to start a session."];
    }
    else if (messageSet == 5)
    {
        [messageContent addObject:@"End Time Calculation"];
        [messageContent addObject:@"Session end time can either be calculated using a timer, or by using the system clock. For example, let's say you select 'Use timer' and then start a session for 3 hours. Then you immediately sleep your Mac for 2 hours. When your Mac wakes, the session will still have 3 hours remaining. This is because the timer is paused while your Mac is sleeping.\n\nIn the same scenario described above, if you had instead selected 'Use system clock' only 1 hour would be remaining on the session. This is because 2 hours would have passed on the system clock while your Mac slept."];
    }
    else if (messageSet == 6)
    {
        [messageContent addObject:@"Display Sleep"];
        [messageContent addObject:@"Check this box if you want your Mac's display to sleep during a session. Note that this preference only affects non-Trigger sessions. If you want Trigger-based sessions to allow your Mac's display to sleep, each individual Trigger can be configured to do so."];
    }
    else if (messageSet == 7)
    {
        [messageContent addObject:@"Screen Saver"];
        [messageContent addObject:@"Check this box if you want your Mac's screen saver to run during a session. Use the slider to select the time threshold before starting the screen saver. During a session, Amphetamine will monitor your Mac for keyboard and mouse movement. After the threshold has passed, Amphetamine will start your screen saver.\n\nYou can add apps to an exceptions list by clicking the 'Exceptions...' button. If an app in the exceptions list is running on your Mac, Amphetamine will not start the screen saver. This can be useful if you're watching a video or reading a long piece of text.\n\nNote that this preference only affects non-Trigger sessions. If you want Trigger-based sessions to allow your screen saver to run, each individual Trigger can be configured to do so."];
    }
    else if (messageSet == 8)
    {
        [messageContent addObject:@"Fast User Switching"];
        [messageContent addObject:@"Check this box to automatically disable all Amphetamine sessions (both Trigger and non-Trigger) when you switch to a different user account on your Mac without logging out of the account under which Amphetamine is running."];
    }
    else if (messageSet == 9)
    {
        [messageContent addObject:@"Battery"];
        [messageContent addObject:@"• End Session if Battery Charge is Below...\nCheck this box if you want Amphetamine to automatically end non-Trigger sessions when your Mac's battery falls below the threshold set using the slider.\n\n• Prompt Before Ending a Session\nCheck this box if you want to be prompted before Amphetamine automatically ends a session due to a low battery charge. You can choose to continue the session, ignoring your Mac's battery charge, if desired.\n\n• Ignore Charge if AC Power Adapter is Connected\nCheck this box if you want Amphetamine to not automatically end sessions due to a low battery charge while your Mac's AC power adapter is connected.\n\nNote that these preferences only affect non-Trigger sessions. If you want Trigger sessions to consider your Mac's battery charge, add a Power criterion to your Trigger(s)."];
    }
    else if (messageSet == 10)
    {
        [messageContent addObject:@"AC Power Adapter"];
        [messageContent addObject:@"Note that you must enable the 'End Session if Battery Charge is Below...' preference and enable 'Ignore Battery Level if AC Power Adapter' or move the 'End Session if Battery Charge is Below...' slider all the way to the right for this preference to be available.\n\nCheck this box to have Amphetamine automatically start a new session whenever your Mac's AC power adapter is connected. Amphetamine will only start a new session if the previous session ended due to a low battery charge."];
    }
    else if (messageSet == 11)
    {
        [messageContent addObject:@"Triggers"];
        [messageContent addObject:@"Triggers are one of Amphetamine's most powerful feature. You can create as many Triggers as you want. When all of the criteria of any given Trigger are met, Amphetamine will automatically start a new session (if one is not already running).\n\nIn addition to the global Enable Triggers button, which if checked, enables the Triggers feature, each individual Trigger you create can also be enabled/disabled. Use the checkbox to the right of each Trigger in the list to temporarily enable or disable an individual Trigger.\n\nTriggerUse the + button to create a new Trigger. Select a Trigger in the list and use the - button to delete a Trigger.\n\nSelect a Trigger in the list and use the ↑ and ↓ buttons to reorder the Trigger list. Triggers will be evaluated in the order they are shown in the list. Meaning, the first (topmost) Trigger in the list will be evaluated first. If all its criteria are met, a session will start. If not all of its criteria are met, the second Trigger in the list will be evaluated."];
    }
    
    else if (messageSet == 12)
    {
        [messageContent addObject:@"Drive Alive"];
        [messageContent addObject:@"Drive Alive can keep your hard drives awake (alive) and ready for action. Drive Alive works by writing a tiny amount of data to your hard drives(s) on a regular interval. This data is repeatedly overwritten, and only takes up a couple of kilobytes (KB) of space on your drive.\n\nTo add a new drive, click the + button and then select the drive you want to keep alive. Select a drive in the list and click the - button to remove it.\n\nEach drive in the list can be kept alive either only when a session is running, or kept alive any time Amphetamine is running. To keep a drive alive all the time, check the box to the right of the drive in the list.\n\nThe default interval for Drive Alive to write data to your drive(s) is every 10 seconds. You can change this by entering a new number in the number field at the bottom of the window."];
    }
    else if (messageSet == 13)
    {
        [messageContent addObject:@"Start or End Session"];
        [messageContent addObject:@"This hot key will allow you to start or end a session using one hot key. The Default Duration (Preferences → Sessions → Default Duration) will be used for the session's duration.\n\nAfter recording the key combination for this hot key, you will be able to access this function of Amphetamine regardless of where you are in macOS. Amphetamine does not need to be the frontmost app, but it does need to be running.\n\nIf you aren't able to record your desired hot key combination, that means that the key combination is already in use elsewhere, by another app."];
    }
    else if (messageSet == 14)
    {
        [messageContent addObject:@"Start Session"];
        [messageContent addObject:@"This hot key will allow you to start a session with a specific duration using a hot key. Specify the duration you would like the session to have.\n\nAfter recording the key combination for this hot key, you will be able to access this function of Amphetamine regardless of where you are in macOS. Amphetamine does not need to be the frontmost app, but it does need to be running.\n\nIf you aren't able to record your desired hot key combination, that means that the key combination is already in use elsewhere, by another app."];
    }
    else if (messageSet == 15)
    {
        [messageContent addObject:@"End Session"];
        [messageContent addObject:@"This hot key will allow you to end any session using a hot key.\n\nAfter recording the key combination for this hot key, you will be able to access this function of Amphetamine regardless of where you are in macOS. Amphetamine does not need to be the frontmost app, but it does need to be running.\n\nIf you aren't able to record your desired hot key combination, that means that the key combination is already in use elsewhere, by another app."];
    }
    else if (messageSet == 16)
    {
        [messageContent addObject:@"Open Menu"];
        [messageContent addObject:@"This hot key will allow you to open Amphetamine's menu using a hot key. This is useful to quickly check the session and Drive Alive details show in the menu, or to quickly navigate or select menu items using the arrow keys and/or keyboard shortcuts (i.e. ⌘F to start a 'While File is Downloading...' session.\n\nAfter recording the key combination for this hot key, you will be able to access this function of Amphetamine regardless of where you are in macOS. Amphetamine does not need to be the frontmost app, but it does need to be running.\n\nIf you aren't able to record your desired hot key combination, that means that the key combination is already in use elsewhere, by another app."];
    }
    else if (messageSet == 17)
    {
        [messageContent addObject:@"Session Reminders"];
        [messageContent addObject:@"Check this box to have Amphetamine deliver a notification/reminder on a regular interval while any session is running."];
    }
    else if (messageSet == 18)
    {
        [messageContent addObject:@"Trigger/Scheduled Notifications"];
        [messageContent addObject:@"Check these boxes to have Amphetamine deliver a notification when any session starts or ends automatically. This includes Trigger sessions, scheduled, and some timed sessions.\n\nSessions started or ended manually by clicking on Amphetamine's image in the menu bar, or by selecting an option from Amphetamine's menu will not cause a notification to be delivered."];
    }
    else if (messageSet == 19)
    {
        [messageContent addObject:@"Sound"];
        [messageContent addObject:@"• Play When Any Session Starts or Ends\nCheck this box to have a sound play whenever a session starts or ends.\n\n• Play With Session Reminders/Other Notifications\nCheck this box if you want a sound to play whenever a notification is delivered.\n\nTo add a new custom sound, click the + button and select a sound file. To remove a custom sound, click the - button. A Finder window will open to the directory where custom files are saved. Delete the sound file in Finder by dragging it to the Trash or by using the Command + Delete keyboard combination."];
    }
    else if (messageSet == 20)
    {
        [messageContent addObject:@"Notification Center"];
        [messageContent addObject:@"Check this box to have Amphetamine automatically clean up its notifications in Notification Center. This will help reduce notification clutter, especially if you have Session Reminders enabled."];
    }
    else if (messageSet == 21)
    {
        [messageContent addObject:@"Status Image"];
        [messageContent addObject:@"Choose the images you want displayed in the menu bar to represent Amphetamine's session state (active/inactive). When a session starts or ends, Amphetamine's image in the menu will update accordingly.\n\nAlternatively, provide your own custom images."];
    }
    else if (messageSet == 22)
    {
        [messageContent addObject:@"Menu Bar Text"];
        [messageContent addObject:@"• Show Session Time Remaining in Menu Bar\nCheck this box if you want a session's time remaining or end time to display alongside Amphetamine's image in the menu bar.\n\nChoose additional formatting options like the size of the text in the menu bar, how time is represented, whether to include seconds, and whether to represent time in a 12 or 24 hour format."];
    }
    else if (messageSet == 23)
    {
        [messageContent addObject:@"Menu Extras"];
        [messageContent addObject:@"• Show Current Session Details\nCheck this box to show session details such as the session's duration/time remaining and activation reason in Amphetamine's menu.\n\n• Show Drive Alive Details\nCheck this box to show Drive Alive details such as which drives are being kept alive and which aren't."];
    }
    else if (messageSet == 24)
    {

    }
    else if (messageSet == 25)
    {
        [messageContent addObject:@"Exceptions"];
        [messageContent addObject:@"If any of the apps or processes in this table are running, it will prevent Amphetamine from activating your Mac's screen saver.\n\nClick the + button to add an app or process to this table. Select an app in the table and click the - button to remove it.\n\nIf you do not see the app or process you are looking for either it is not currently running or Apple's sandboxing security prevents Amphetamine from seeing the app/process."];
    }
    else if (messageSet == 26)
    {
        [messageContent addObject:@"Apps and Processes"];
        [messageContent addObject:@"To see an app or process in this table, it must be running on your Mac. This checkbox will further filter this list between including helper apps/processes and excluding them. Helper apps and processes typically do not have a user interface and run in the background. This often includes apps such as Amphetamine, which can run from the menu bar and do not have a Dock icon.\n\nIf you are not seeing an app/process in the table, either it is not running, or Amphetamine is blocked from interacting with the app/process by macOS's sandboxing security feature."];
    }
    else if (messageSet == 27)
    {
        [messageContent addObject:@"Trigger Configuration"];
        [messageContent addObject:@"Name\nGive your Trigger a memorable name. Your Trigger’s name will be used in notifications and in the session details section of Amphetamine’s menu (if you have these preferences enabled).\n\nCriteria\nYour Trigger can use one instance of each criterion. To add a new criterion, use the \"Add criterion…\" button, select a criterion, and then check the box to use it. To remove a criterion, double-click the criterion in the Criteria table, and uncheck the box.\n\nAdditional Options\nEach Trigger you create can independently be configured to allow or prevent display sleep and/or your Mac’s screen saver. Note that the screen saver exceptions list (Preferences → Sessions) will be used for your Trigger if you choose to allow your Mac’s screen saver to run."];
    }
    else if (messageSet == 28)
    {
        [messageContent addObject:@"Wi-Fi Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when your Mac is connected to a specified Wi-Fi network. Enter the name of Wi-Fi network (case-sensitive) in the provided field, or use the button to automatically get the name of the current network your Mac is connected to."];
    }
    else if (messageSet == 29)
    {
        [messageContent addObject:@"IP Address Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when your Mac has a specific IP address, or your Mac's IP address falls within a specified range. Use the button to get your Mac's current IP address, or enter the address(es) manually."];
    }
    else if (messageSet == 30)
    {
        [messageContent addObject:@"App Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified app is running on your Mac. Only apps that are currently running appear in the list. If an app does not appear in the list, either it is not currently running, or Apple's sandboxing feature prevents Amphetamine from interacting with the app."];
    }
    else if (messageSet == 31)
    {
        [messageContent addObject:@"Power Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified power conditions are met on your Mac."];
    }
    else if (messageSet == 32)
    {
        [messageContent addObject:@"Schedule Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the current time and day of your Mac's system clock falls within the specified time and day range."];
    }
    else if (messageSet == 33)
    {
        [messageContent addObject:@"Display Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified number of displays are connected to your Mac. If your Mac has a built-in display, this will count as 1 display./n/nIf you connect an external display in addition to your Mac's built-in display, 2 displays will be detected./n/nIf you have display mirroring enabled for your Mac's internal display and an external display is connected, only 1 display will be detected."];
    }
    else if (messageSet == 34)
    {
        [messageContent addObject:@"Volume/Drive Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified drive or volume is mounted on your Mac. To see the desired drive or volume in the list, ensure it is already mounted."];
    }
    else if (messageSet == 35)
    {
        [messageContent addObject:@"Audio Output Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified audio output is set as the current output on your Mac./n/nAudio output can be set by visiting  → System Preferences → Sound → Output."];
    }
    else if (messageSet == 36)
    {
        [messageContent addObject:@"Bluetooth Device Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified Bluetooth device is connected to your Mac. Only Bluetooth devices which have been paired with your Mac will appear in the list.\n\nTo pair a new Bluetooth device, place your device in pairing mode and visit  → System Preferences → Bluetooth."];
    }
    else if (messageSet == 37)
    {
        [messageContent addObject:@"VPN Service Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when your Mac is connected to the specified VPN service. Start your VPN service on your Mac and then click the refresh button to automatically get the name of the service.\n\nThis criterion is somewhat experimental, as not all VPN services have been tested. Contact Amphetamine support for assistance if needed to report an issue."];
    }
    else if (messageSet == 38)
    {
        [messageContent addObject:@"USB Device Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified USB device is connected to your Mac. To see the desired USB device in the list, connect it to your Mac and power it on."];
    }
    
    return messageContent;
}

@end
