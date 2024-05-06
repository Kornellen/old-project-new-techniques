
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'script tool'),
(2, 'eup'),
(3, 'cosmetic'),
(4, 'lspdfr'),
(5, 'vechical');



CREATE TABLE `mods` (
  `modID` int(11) NOT NULL,
  `modCat` int(11) NOT NULL,
  `modName` varchar(65) NOT NULL,
  `modLink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


INSERT INTO `mods` (`modID`, `modCat`, `modName`, `modLink`) VALUES
(1, 1, 'Script Hook V', 'https://www.gta5-mods.com/tools/script-hook-v'),
(2, 1, 'ScriptHook .NET', 'https://www.gta5-mods.com/tools/scripthookv-net'),
(3, 1, 'Menyoo', 'https://www.gta5-mods.com/scripts/menyoo-pc-sp'),
(4, 1, 'GameConfig', 'https://www.gta5-mods.com/misc/gta-5-gameconfig-300-cars'),
(5, 1, 'Lennys Mod Loader', 'https://www.lcpdfr.com/downloads/gta5mods/misc/25437-lennys-mod-loader/'),
(6, 1, 'Rage-NativeUI', 'https://github.com/alexguirre/RAGENativeUI/releases'),
(7, 1, 'LSPDFR', 'https://www.lcpdfr.com/downloads/gta5mods/g17media/7792-lspd-first-response/'),
(8, 3, 'Improved Female Faces', 'https://www.gta5-mods.com/player/improving-all-mp-female-characters-appearance-1-0'),
(9, 2, 'EUP Menu', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/13245-eup-menu/'),
(10, 2, 'EUP Law & Order', 'https://www.lcpdfr.com/downloads/gta5mods/character/8151-emergency-uniforms-pack-law-order/'),
(11, 2, 'EUP Serve & Rescue', 'https://www.lcpdfr.com/downloads/gta5mods/character/16256-emergency-uniforms-pack-serve-rescue/'),
(12, 2, 'EUP Basic', 'https://www.lcpdfr.com/downloads/gta5mods/datafile/22400-eupfr-basic-configurations/'),
(13, 4, 'AssortetCallouts', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/9689-assorted-callouts-bank-heist-store-robbery-more/'),
(14, 4, 'United Callouts', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/20730-unitedcallouts-robbery-drugs-burglary-more/'),
(15, 4, 'Super Callouts', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/23995-supercallouts/'),
(16, 4, 'Typical Callouts', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/29152-typical-callouts/'),
(17, 4, 'FBI Callouts', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/31249-fbi-callouts-beta/'),
(18, 4, 'Forestry Callouts', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/34663-forestry-callouts/'),
(19, 4, 'Code Red Callouts', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/10947-code-red-callouts-297-stolen-tanker-vicious-dog-more/'),
(20, 4, 'City Callouts', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/29133-city-callouts-by-connorftw/'),
(21, 4, 'StopThePed', 'https://www.bejoijo.com/post/stop-the-ped'),
(22, 4, 'UltimateBackup', 'https://www.bejoijo.com/post/ultimate-backup'),
(23, 4, 'CompuLite', 'https://www.bejoijo.com/post/compulite'),
(24, 4, 'Player Location Display', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/7706-player-location-display/'),
(25, 4, 'Emergency Lighting System ', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/13865-emergency-lighting-system/'),
(26, 4, 'Traffic Policer', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/8303-traffic-policer-breathalyzer-traffic-offences-speed-detection-more/'),
(27, 4, 'Arrest Manager', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/8107-arrest-manager-grab-peds-more-jail-points-prisoner-transport-more/'),
(28, 4, 'LSPDFR+', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/11930-lspdfr-better-traffic-stops-court-system/'),
(29, 4, 'Better EMS', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/11647-better-ems/'),
(30, 4, 'Deadly Weapon', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/27453-deadly-weapons-guns-are-actually-dangerous/\"'),
(31, 4, 'Damage Taker', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/42767-damage-tracker-framework/'),
(32, 4, 'Callouts Interface', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/37828-callout-interface/'),
(33, 4, 'Custom Pullover', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/27260-custom-pullover/'),
(34, 4, 'MoreRadioChatter', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/13907-more-radio-chatter/'),
(35, 4, 'ClearTheWay', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/10626-clearthewayv/'),
(36, 4, 'SceneManager', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/27954-scene-manager/'),
(37, 4, 'SirenSettingLimitAdjuster', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/28560-sirensetting-limit-adjuster/'),
(38, 4, 'Keep the f door open', 'https://www.lcpdfr.com/downloads/gta5mods/scripts/13021-ktfdo-keep-the-f-door-open/'),
(39, 5, 'LSSD Pack', 'https://www.gta5-mods.com/vehicles/los-santos-county-sheriff-department-pack'),
(40, 5, 'FIB Pack', 'https://www.gta5-mods.com/vehicles/fib-police'),
(41, 5, 'SAHP Pack', 'https://www.gta5-mods.com/vehicles/sahp'),
(42, 5, 'NOOSE Pack', 'https://www.gta5-mods.com/vehicles/noose'),
(43, 1, 'OpenIV', 'https://openiv.com');


ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);


ALTER TABLE `mods`
  ADD PRIMARY KEY (`modID`),
  ADD KEY `modCat` (`modCat`);


ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `mods`
  MODIFY `modID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;


ALTER TABLE `mods`
  ADD CONSTRAINT `mods_ibfk_1` FOREIGN KEY (`modCat`) REFERENCES `categories` (`categoryID`);
COMMIT;
