	.global _start
	.section .text
_start:
	stp x29, x30, [sp, #-32]!
	mov x29, sp
	str x20, [sp, #16]
	mov x13, sp
	ldr x9, =0x75206e6576617265
	ldr x10, =0x0a726f776f207577
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20333c20656e6975
	ldr x10, =0x687465696e6e6977
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x72657a2e203a6666
	ldr x10, =0x712f2f0a3538206f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x37206e67696c612e
	ldr x10, =0x757473657065720a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6f69746365732e09
	ldr x10, =0x090a7373622e206e
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c70735b202c30
	ldr x10, =0x0a22215d36312d23
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7473745c6e5c3032
	ldr x10, =0x3178202c39782070
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3032303230327830
	ldr x10, =0x3032303230323032
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x646c745c6e5c3032
	ldr x10, =0x3d202c3031782072
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3032303230327830
	ldr x10, =0x3032303230323032
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6c745c6e5c222069
	ldr x10, =0x3d202c3978207264
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6d6574657065720a
	ldr x10, =0x696373612e203a70
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6e6f69746365732e
	ldr x10, =0x617461646f722e20
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x36783023202c3931
	ldr x10, =0x090a746572090a36
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x65747962660a7465
	ldr x10, =0x7720766f6d090a3a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c39317720766f
	ldr x10, =0x72090a3536783023
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x650a746572090a34
	ldr x10, =0x6d090a3a65747962
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7720766f6d090a3a
	ldr x10, =0x36783023202c3931
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x72090a3336783023
	ldr x10, =0x65747962640a7465
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6d090a3a65747962
	ldr x10, =0x202c39317720766f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x36783023202c3931
	ldr x10, =0x630a746572090a32
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x65747962620a7465
	ldr x10, =0x7720766f6d090a3a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c39317720766f
	ldr x10, =0x72090a3136783023
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x610a746572090a39
	ldr x10, =0x6d090a3a65747962
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7720766f6d090a3a
	ldr x10, =0x33783023202c3931
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a746572090a3833
	ldr x10, =0x65747962656e696e
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20766f6d090a3a65
	ldr x10, =0x783023202c393177
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a746572090a3733
	ldr x10, =0x7479626874676965
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20766f6d090a3a65
	ldr x10, =0x783023202c393177
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a746572090a3633
	ldr x10, =0x7479626e65766573
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20766f6d090a3a65
	ldr x10, =0x783023202c393177
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6572090a35337830
	ldr x10, =0x7479627869730a74
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6f6d090a3a657479
	ldr x10, =0x23202c3931772076
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x72090a3433783023
	ldr x10, =0x62657669660a7465
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6d090a3a65747962
	ldr x10, =0x202c39317720766f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x090a333378302320
	ldr x10, =0x72756f660a746572
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x090a3a6574796265
	ldr x10, =0x2c39317720766f6d
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x090a323378302320
	ldr x10, =0x657268740a746572
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x090a3a657479626f
	ldr x10, =0x2c39317720766f6d
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3133783023202c39
	ldr x10, =0x77740a746572090a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3a65747962656e6f
	ldr x10, =0x317720766f6d090a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x783023202c393177
	ldr x10, =0x0a746572090a3033
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7479626f72657a0a
	ldr x10, =0x20766f6d090a3a65
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2e62090a66307830
	ldr x10, =0x6574796266207165
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6d63090a65747962
	ldr x10, =0x23202c3831772070
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6530783023202c38
	ldr x10, =0x652071652e62090a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6574796264207165
	ldr x10, =0x317720706d63090a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x23202c3831772070
	ldr x10, =0x2e62090a64307830
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x632071652e62090a
	ldr x10, =0x6d63090a65747962
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x317720706d63090a
	ldr x10, =0x6330783023202c38
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2e62090a62307830
	ldr x10, =0x6574796262207165
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6d63090a65747962
	ldr x10, =0x23202c3831772070
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6130783023202c38
	ldr x10, =0x612071652e62090a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x65747962656e696e
	ldr x10, =0x317720706d63090a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x30783023202c3831
	ldr x10, =0x2071652e62090a39
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7479626874676965
	ldr x10, =0x7720706d63090a65
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x30783023202c3831
	ldr x10, =0x2071652e62090a38
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7479626e65766573
	ldr x10, =0x7720706d63090a65
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x30783023202c3831
	ldr x10, =0x2071652e62090a37
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7479627869732071
	ldr x10, =0x7720706d63090a65
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3023202c38317720
	ldr x10, =0x652e62090a363078
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6265766966207165
	ldr x10, =0x706d63090a657479
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x23202c3831772070
	ldr x10, =0x2e62090a35307830
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x72756f662071652e
	ldr x10, =0x6d63090a65747962
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c38317720706d
	ldr x10, =0x62090a3430783023
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x657268742071652e
	ldr x10, =0x63090a6574796265
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c38317720706d
	ldr x10, =0x62090a3330783023
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x77742071652e6209
	ldr x10, =0x63090a657479626f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x38317720706d6309
	ldr x10, =0x0a3230783023202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2071652e62090a31
	ldr x10, =0x0a65747962656e6f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7720706d63090a65
	ldr x10, =0x30783023202c3831
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x71652e62090a3030
	ldr x10, =0x7479626f72657a20
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20706d63090a3a65
	ldr x10, =0x783023202c383177
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x62696e0a30232063
	ldr x10, =0x7479626f74656c62
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c387820766f6d09
	ldr x10, =0x7673090a33392320
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x766f6d090a323323
	ldr x10, =0x0a3023202c307820
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x303378202c393278
	ldr x10, =0x202c5d70735b202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3123202c70735b20
	ldr x10, =0x2070646c090a5d36
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x090a3a6666757473
	ldr x10, =0x2c3032782072646c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x637673090a323131
	ldr x10, =0x746978650a302320
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7820627573090a31
	ldr x10, =0x23202c3278202c32
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x782072736c090a32
	ldr x10, =0x23202c3278202c32
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c32782062757309
	ldr x10, =0x3278202c31327820
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x78202c3178206464
	ldr x10, =0x0a33313123202c31
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x317820766f6d090a
	ldr x10, =0x61090a323278202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6f6d090a34362320
	ldr x10, =0x3123202c30782076
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a3a7473616c746e
	ldr x10, =0x2c387820766f6d09
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x77646e6173207467
	ldr x10, =0x6972700a31686369
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c37317820706d63
	ldr x10, =0x2e62090a30327820
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x090a353823202c32
	ldr x10, =0x090a302320637673
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6675747365706572
	ldr x10, =0x7820766f6d090a66
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6c090a3123202c30
	ldr x10, =0x3d202c3178207264
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3623202c38782076
	ldr x10, =0x7820766f6d090a34
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x35317820766f6d09
	ldr x10, =0x6f6d090a3023202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x78202c3231782064
	ldr x10, =0x0a333423202c3231
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c323178202c3231
	ldr x10, =0x6461090a39322320
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x676e69746e697270
	ldr x10, =0x7820627573090a3a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x68636977646e6173
	ldr x10, =0x656d757365720a32
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3123202c35317820
	ldr x10, =0x20746c2e62090a36
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c353178202c3531
	ldr x10, =0x706d63090a312320
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c5d3231785b20
	ldr x10, =0x7820646461090a31
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x73090a657479626f
	ldr x10, =0x2c39317720627274
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6c62090a66307830
	ldr x10, =0x74656c6262696e20
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x38317720646e6109
	ldr x10, =0x23202c363177202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x785b202c39317720
	ldr x10, =0x0a3123202c5d3231
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x79626f74656c6262
	ldr x10, =0x62727473090a6574
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x23202c3831772c20
	ldr x10, =0x696e206c62090a34
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a3066783023202c
	ldr x10, =0x3831772072736c09
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20646e61090a312d
	ldr x10, =0x363177202c383177
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c363177206272
	ldr x10, =0x23202c5d3731785b
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x313278202c313278
	ldr x10, =0x646c090a3123202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x68636977646e6173
	ldr x10, =0x20646461090a3a32
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x78202c3231782062
	ldr x10, =0x0a363423202c3231
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x77646e617320746c
	ldr x10, =0x7573090a31686369
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x35317820706d6309
	ldr x10, =0x2e62090a3823202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c353178206464
	ldr x10, =0x0a3123202c353178
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3231785b202c3931
	ldr x10, =0x61090a3123202c5d
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x657479626f74656c
	ldr x10, =0x772062727473090a
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a6630783023202c
	ldr x10, =0x6262696e206c6209
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20646e61090a3123
	ldr x10, =0x363177202c383177
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c39317720627274
	ldr x10, =0x202c5d3231785b20
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x74656c6262696e20
	ldr x10, =0x73090a657479626f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3831772c20383177
	ldr x10, =0x6c62090a3423202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x66783023202c3631
	ldr x10, =0x2072736c090a2030
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6e61090a312d2320
	ldr x10, =0x77202c3831772064
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x363177206272646c
	ldr x10, =0x2c5d3731785b202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x78202c3132782064
	ldr x10, =0x090a3123202c3132
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6977646e61730a30
	ldr x10, =0x6461090a3a316863
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x313123202c327820
	ldr x10, =0x2320637673090a32
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c317820766f6d
	ldr x10, =0x766f6d090a343178
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20766f6d090a3436
	ldr x10, =0x090a3123202c3078
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6d090a3a74737269
	ldr x10, =0x23202c387820766f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x23202c343178202c
	ldr x10, =0x66746e6972700a31
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a3123202c333178
	ldr x10, =0x3032782062757309
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x73090a3123202c34
	ldr x10, =0x202c373178206275
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x627573090a312320
	ldr x10, =0x3178202c32327820
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7820627573090a30
	ldr x10, =0x2c333178202c3132
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6f6d090a33342320
	ldr x10, =0x23202c3531782076
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7820646461090a35
	ldr x10, =0x2c323178202c3231
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c32317820627573
	ldr x10, =0x3823202c32317820
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7264617465736572
	ldr x10, =0x090a3a7365737365
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x657264616f6c2074
	ldr x10, =0x0a66667574736570
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x202c35317820706d
	ldr x10, =0x6c2e62090a353823
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3178202c35317820
	ldr x10, =0x63090a3123202c35
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c5d3231785b202c
	ldr x10, =0x646461090a312320
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x090a3123202c5d31
	ldr x10, =0x3631772062727473
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x206272646c090a3a
	ldr x10, =0x31785b202c363177
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x7264616f6c0a3023
	ldr x10, =0x6666757473657065
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6d090a6666757473
	ldr x10, =0x202c35317820766f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6c3a202c32317820
	ldr x10, =0x657065723a32316f
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x61090a6666757473
	ldr x10, =0x2c32317820206464
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x782070726461090a
	ldr x10, =0x65706572202c3231
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3a32316f6c3a202c
	ldr x10, =0x706d657465706572
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2020646461090a70
	ldr x10, =0x313178202c313178
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x2c31317820707264
	ldr x10, =0x6d65746570657220
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x317820766f6d090a
	ldr x10, =0x61090a7073202c34
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x766f6d090a5d3631
	ldr x10, =0x7073202c33317820
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x3032782072747309
	ldr x10, =0x23202c70735b202c
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x20766f6d090a215d
	ldr x10, =0x0a7073202c393278
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x5b202c303378202c
	ldr x10, =0x32332d23202c7073
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x0a3a74726174735f
	ldr x10, =0x3932782070747309
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6f69746365732e09
	ldr x10, =0x0a747865742e206e
	stp x9, x10, [sp, #-16]!
	ldr x9, =0x6c61626f6c672e09
	ldr x10, =0x0a74726174735f20
	stp x9, x10, [sp, #-16]!
	mov x14, sp
	adrp x11, repetemp
	add  x11, x11, :lo12:repetemp
	adrp x12, repestuff
	add  x12, x12, :lo12:repestuff
	mov x15, #0
loadrepestuff:
	ldrb w16, [x11], #1
	strb w16, [x12], #1
	add x15, x15, #1
	cmp x15, #85
	b.lt loadrepestuff
resetadresses:
	sub x12, x12, #85
	add x12, x12, #43
	mov x15, #0
	sub x21, x13, #1
	sub x22, x14, #1
	sub x17, x13, #1
	sub x20, x14, #1
printfirst:
	mov x8, #64
	mov x0, #1
	mov x1, x14
	mov x2, #112
	svc #0
sandwich1:
	add x21, x21, #1
	ldrb w16, [x17], #-1
	and w18, w16, #0xf0 
	lsr w18 ,w18, #4
	bl nibbletobyte
	strb w19, [x12], #1
	and w18, w16, #0x0f
	bl nibbletobyte
	strb w19, [x12], #1
	add x15, x15, #1
	cmp x15, #8
	b.lt sandwich1
	sub x12, x12, #46
sandwich2:
	add x21, x21, #1
	ldrb w16, [x17], #-1
	and w18, w16, #0xf0
	lsr w18 ,w18, #4
	bl nibbletobyte
	strb w19, [x12], #1
	and w18, w16, #0x0f
	bl nibbletobyte
	strb w19, [x12], 1
	add x15, x15, #1
	cmp x15, #16
	b.lt sandwich2
resumeprinting:
	sub x12, x12, #29
	add x12, x12, #43
	mov x15, #0
	mov x8, #64
	mov x0, #1
	ldr x1, =repestuff
	mov x2, #85
	svc #0
	cmp x17, x20
	b.gt sandwich1
printlast:
	mov x8, #64
	mov x0, #1
	mov x1, x22
	add x1, x1, #113
	sub x2, x21, x22
	lsr x2, x2, #1
	sub x2, x2, #112
	svc #0
exitstuff:
	ldr x20, [sp, #16]
	ldp x29, x30, [sp], #32
	mov x0, #0
	mov x8, #93
	svc #0
nibbletobyte:
	cmp w18, #0x00
	b.eq zerobyte
	cmp w18, #0x01
	b.eq onebyte
	cmp w18, #0x02
	b.eq twobyte
	cmp w18, #0x03
	b.eq threebyte
	cmp w18, #0x04
	b.eq fourbyte
	cmp w18, #0x05
	b.eq fivebyte
	cmp w18, #0x06
	b.eq sixbyte
	cmp w18, #0x07
	b.eq sevenbyte
	cmp w18, #0x08
	b.eq eigthbyte
	cmp w18, #0x09
	b.eq ninebyte
	cmp w18, #0x0a
	b.eq abyte
	cmp w18, #0x0b
	b.eq bbyte
	cmp w18, #0x0c
	b.eq cbyte
	cmp w18, #0x0d
	b.eq dbyte
	cmp w18, #0x0e
	b.eq ebyte
	cmp w18, #0x0f
	b.eq fbyte
zerobyte:
	mov w19, #0x30
	ret
onebyte:
	mov w19, #0x31
	ret
twobyte:
	mov w19, #0x32
	ret
threebyte:
	mov w19, #0x33
	ret
fourbyte:
	mov w19, #0x34
	ret
fivebyte:
	mov w19, #0x35
	ret
sixbyte:
	mov w19, #0x36
	ret
sevenbyte:
	mov w19, #0x37
	ret
eigthbyte:
	mov w19, #0x38
	ret
ninebyte:
	mov w19, #0x39
	ret
abyte:
	mov w19, #0x61
	ret
bbyte:
	mov w19, #0x62
	ret
cbyte:
	mov w19, #0x63
	ret
dbyte:
	mov w19, #0x64
	ret
ebyte:
	mov w19, #0x65
	ret
fbyte:
	mov w19, #0x66
	ret
	.section .rodata
repetemp: .ascii "\n\tldr x9, =0x2020202020202020\n\tldr x10, =0x2020202020202020\n\tstp x9, x10, [sp, #-16]!"
	.section .bss
	.align 7
repestuff: .zero 85
//quine <3 winnietheraven uwu owor
