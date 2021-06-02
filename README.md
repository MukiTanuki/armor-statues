# Armor Statues
A datapack that allows you to modify the settings and pose of armor stands using a book with clickable links.

### Everything you should know about this pack

1. This datapack uses a book of clickable links to modify the settings and pose of armour stands.
2. Once the datapack is installed, use "/trigger as_help" to see how to obtain the book.
   (By default this is by clicking a link in the help text but this can be changed in the admin settings.)
3. Admin settings are available using "/function armor_statues:admin" command and include:
	- Creating and removing a particle shrine for obtaining the book.
	- Enabling and disabling a crafting method for obtaining the book.
	- Enabling and disabling the link in the help text for obtaining the book.
	- Removing unused armour stands; ones that are invisible and do not hold or wear any items.
4. The help text will be amended to show the selected method(s) of obtaining the book
5. The help text also includes options to have notification messages in either the action bar or in chat.

### Release Notes
#### v2.9.0 BETA 3
- Added Admin Menu features accessed with /function armor_statues:admin
- Added 'Max Undo States': Sets the maximum number of times the armor statues book can Undo actions. Defaults to 10.
- Added 'Item Frame animation time': Sets the amount of time that item frames can be detected and animate armor stands. (16 is recommended) Defaults to 0.
- Saved books now label if they have a saved pose in their Lore.  You can name a saved pose by first naming the Armor Stand.

- Added a new 'states' system to Armor stand books.  These can be found on the first page and include Repeat, Undo, and Redo.
1. Repeat - allows you to perform the same action multiple times.
2. Undo/Redo - allows you to revert multiple actions.  The number of times that actions can be undone is based on the Max Undo States.  This resets every time a different armor stand is edited.


- Added Item Frame Animators.
1. Disabled by default.
2. Allows players to place books(with a saved pose) into item frames to animate armor stands.  You can animate them by placing redstone dust in the space with the item frame, then powering it.
3. Animates the nearest armor stand within 8 blocks.
4. Animations won't play unless there's a player within 35 blocks of the item frame.
