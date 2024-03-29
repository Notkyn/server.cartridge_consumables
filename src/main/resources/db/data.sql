SET SQL_SAFE_UPDATES = 0;

# cleaning all notes from all tables;
DELETE FROM `refill_cartridge` WHERE `_id` > 0;
ALTER TABLE `refill_cartridge` AUTO_INCREMENT = 1;
DELETE FROM `department` WHERE `_id` > 0;
ALTER TABLE `department` AUTO_INCREMENT = 1;
DELETE FROM `cartridge` WHERE `_id` > 0;
ALTER TABLE `cartridge` AUTO_INCREMENT = 1;
DELETE FROM `toner` WHERE `_id` > 0;
ALTER TABLE `toner` AUTO_INCREMENT = 1;
DELETE FROM `drum` WHERE `_id` > 0;
ALTER TABLE `drum` AUTO_INCREMENT = 1;
DELETE FROM `magnetic_shaft` WHERE `_id` > 0;
ALTER TABLE `magnetic_shaft` AUTO_INCREMENT = 1;
DELETE FROM `primary_charge_shaft` WHERE `_id` > 0;
ALTER TABLE `primary_charge_shaft` AUTO_INCREMENT = 1;
DELETE FROM `cleaning_blade` WHERE `_id` > 0;
ALTER TABLE `cleaning_blade` AUTO_INCREMENT = 1;
DELETE FROM `dispensing_blade` WHERE `_id` > 0;
ALTER TABLE `dispensing_blade` AUTO_INCREMENT = 1;

# insert new notes to all tables;
INSERT INTO `toner`(`name`) VALUES ('toner_1');
INSERT INTO `toner`(`name`) VALUES ('toner_2');
INSERT INTO `toner`(`name`) VALUES ('toner_3');
INSERT INTO `toner`(`name`) VALUES ('toner_4');
INSERT INTO `toner`(`name`) VALUES ('toner_5');

INSERT INTO `drum`(`name`) VALUES ('drum_1');
INSERT INTO `drum`(`name`) VALUES ('drum_2');
INSERT INTO `drum`(`name`) VALUES ('drum_3');
INSERT INTO `drum`(`name`) VALUES ('drum_4');
INSERT INTO `drum`(`name`) VALUES ('drum_5');

INSERT INTO `magnetic_shaft`(`name`) VALUES ('magnetic_shaft_1');
INSERT INTO `magnetic_shaft`(`name`) VALUES ('magnetic_shaft_2');
INSERT INTO `magnetic_shaft`(`name`) VALUES ('magnetic_shaft_3');
INSERT INTO `magnetic_shaft`(`name`) VALUES ('magnetic_shaft_4');
INSERT INTO `magnetic_shaft`(`name`) VALUES ('magnetic_shaft_5');

INSERT INTO `primary_charge_shaft`(`name`) VALUES ('primary_charge_shaft_1');
INSERT INTO `primary_charge_shaft`(`name`) VALUES ('primary_charge_shaft_2');
INSERT INTO `primary_charge_shaft`(`name`) VALUES ('primary_charge_shaft_3');
INSERT INTO `primary_charge_shaft`(`name`) VALUES ('primary_charge_shaft_4');
INSERT INTO `primary_charge_shaft`(`name`) VALUES ('primary_charge_shaft_5');

INSERT INTO `cleaning_blade`(`name`) VALUES ('cleaning_blade_1');
INSERT INTO `cleaning_blade`(`name`) VALUES ('cleaning_blade_2');
INSERT INTO `cleaning_blade`(`name`) VALUES ('cleaning_blade_3');
INSERT INTO `cleaning_blade`(`name`) VALUES ('cleaning_blade_4');
INSERT INTO `cleaning_blade`(`name`) VALUES ('cleaning_blade_5');

INSERT INTO `dispensing_blade`(`name`) VALUES ('dispensing_blade_1');
INSERT INTO `dispensing_blade`(`name`) VALUES ('dispensing_blade_2');
INSERT INTO `dispensing_blade`(`name`) VALUES ('dispensing_blade_3');
INSERT INTO `dispensing_blade`(`name`) VALUES ('dispensing_blade_4');
INSERT INTO `dispensing_blade`(`name`) VALUES ('dispensing_blade_5');

INSERT INTO `cartridge`(`name`, `coef_toner`, `_id_toner`, `_id_drum`, `_id_magnetic_shaft`, `_id_primary_charge_shaft`, `_id_cleaning_blade`, `_id_dispensing_blade`)
  VALUES ('cartridge_1', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `cartridge`(`name`, `coef_toner`, `_id_toner`, `_id_drum`, `_id_magnetic_shaft`, `_id_primary_charge_shaft`, `_id_cleaning_blade`, `_id_dispensing_blade`)
  VALUES ('cartridge_2', 2, 2, 2, 2, 2, 2, 2);
INSERT INTO `cartridge`(`name`, `coef_toner`, `_id_toner`, `_id_drum`, `_id_magnetic_shaft`, `_id_primary_charge_shaft`, `_id_cleaning_blade`, `_id_dispensing_blade`)
  VALUES ('cartridge_3', 3, 3, 3, 3, 3, 3, 3);
INSERT INTO `cartridge`(`name`, `coef_toner`, `_id_toner`, `_id_drum`, `_id_magnetic_shaft`, `_id_primary_charge_shaft`, `_id_cleaning_blade`, `_id_dispensing_blade`)
  VALUES ('cartridge_4', 4, 4, 4, 4, 4, 4, 4);
INSERT INTO `cartridge`(`name`, `coef_toner`, `_id_toner`, `_id_drum`, `_id_magnetic_shaft`, `_id_primary_charge_shaft`, `_id_cleaning_blade`, `_id_dispensing_blade`)
  VALUES ('cartridge_5', 1, 1, 1, 1, 1, 1, 1);

INSERT INTO `department`(`name`, `_id_cartridge`) VALUES ('department_1', 1);
INSERT INTO `department`(`name`, `_id_cartridge`) VALUES ('department_2', 2);
INSERT INTO `department`(`name`, `_id_cartridge`) VALUES ('department_3', 3);
INSERT INTO `department`(`name`, `_id_cartridge`) VALUES ('department_4', 4);
INSERT INTO `department`(`name`, `_id_cartridge`) VALUES ('department_5', 1);

INSERT INTO `refill_cartridge`(`date`, `drum_use`, `magnetic_shaft_use`, `primary_charge_shaft_use`, `cleaning_blade__use`, `dispensing_blade_use`, `_id_department`)
  VALUES ('2015-05-01', 0, 0, 0, 0, 0, 1);
INSERT INTO `refill_cartridge`(`date`, `drum_use`, `magnetic_shaft_use`, `primary_charge_shaft_use`, `cleaning_blade__use`, `dispensing_blade_use`, `_id_department`)
  VALUES ('2015-05-02', 0, 0, 0, 0, 0, 2);
INSERT INTO `refill_cartridge`(`date`, `drum_use`, `magnetic_shaft_use`, `primary_charge_shaft_use`, `cleaning_blade__use`, `dispensing_blade_use`, `_id_department`)
  VALUES ('2015-05-03', 1, 1, 1, 1, 1, 3);
INSERT INTO `refill_cartridge`(`date`, `drum_use`, `magnetic_shaft_use`, `primary_charge_shaft_use`, `cleaning_blade__use`, `dispensing_blade_use`, `_id_department`)
  VALUES ('2015-05-04', 0, 0, 0, 0, 0, 4);
INSERT INTO `refill_cartridge`(`date`, `drum_use`, `magnetic_shaft_use`, `primary_charge_shaft_use`, `cleaning_blade__use`, `dispensing_blade_use`, `_id_department`)
  VALUES ('2015-05-05', 0, 0, 0, 0, 0, 1);

SET SQL_SAFE_UPDATES = 1;