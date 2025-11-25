# Play the Crush Sound When Shocked [QB22]

# Inject @
# PAL   : 80567f28
# NTSC-U: 80563ba8
# NTSC-J: 805678a8
# NTSC-K: 80555f80

li r4, 0x1a8            # Original instruction, sound ID for spin daamge.

# Check if register 22 is equal to different damage types. The damage types checked are lightning/shock (0xa), electric propeller/zapper (0xf), and the Thundercloud (0x11)
cmpwi r22, 0x000a
beq playCrushedSound
cmpwi r22, 0x000f
beq playCrushedSound
cmpwi r22, 0x0011
bne end                 # Branch if not true, prevents unwanted execution.

# Play the distroted record scratch (crushed) sound.
playCrushedSound:
li r4, 0x1a4            # Sound ID for crush damage.

end: