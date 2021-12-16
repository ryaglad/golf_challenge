# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create(name: 'Sandia Golf Club', city: "Albuquerque", state: "NM")
Course.create(name: 'Isleta Golf Club', city: "Albuquerque", state: "NM")
Course.create(name: 'Santa Ana Golf Club', city: "Bernalillo", state: "NM")
Tee.create(name: "Championship", course_id: 1, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '3353', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3775', tot: '7775')
Tee.create(name: "Club", course_id: 1, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '3253', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3475', tot: '7275')
Tee.create(name: "Forward", course_id: 1, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '2953', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3175', tot: '6775')
Tee.create(name: "Championship", course_id: 2, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '3353', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3775', tot: '7775')
Tee.create(name: "Club", course_id: 2, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '3253', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3475', tot: '7275')
Tee.create(name: "Forward", course_id: 2, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '2953', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3175', tot: '6775')
Tee.create(name: "Championship", course_id: 3, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '3353', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3775', tot: '7775')
Tee.create(name: "Club", course_id: 3, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '3253', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3475', tot: '7275')
Tee.create(name: "Forward", course_id: 3, hole_1: '333', hole_2: "432", hole_3: '175', hole_4: '433', hole_5: "532", hole_6: '375', hole_7: '393', hole_8: "632", hole_9: '175', in: '2953', hole_10: "432", hole_11: '175', hole_12: '563', hole_13: "432", hole_14: '175', hole_15: '433', hole_16: "562", hole_17: '175', hole_18: '175', out: '3175', tot: '6775')

