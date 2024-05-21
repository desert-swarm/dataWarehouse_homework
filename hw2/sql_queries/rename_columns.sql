ALTER TABLE `dw2024_NYC_collision_data`.crash_facts
  RENAME COLUMN number_of_cyclists_killed TO number_of_cyclist_killed,
  RENAME COLUMN number_of_cyclists_injured TO number_of_cyclist_injured,
  RENAME COLUMN numbers_of_motorists_killed TO number_of_motorist_killed,
  RENAME COLUMN number_of_motorists_injured TO number_of_motorist_injured
