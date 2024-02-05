-- -----------------------------------------------------
-- Table `ecommerce`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentcar`.`client` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `adresse` VARCHAR(45) NULL,
  `phone` VARCHAR(20) NULL,
  `courriel` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentcar`.`location` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date_debut` VARCHAR(45) NOT NULL,
  `date_fin` VARCHAR(45) NOT NULL,
  `prix` DOUBLE NULL,
  `client_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_location_client1_idx` (`client_id` ASC) ,
  CONSTRAINT `fk_location_client1`
    FOREIGN KEY (`client_id`)
    REFERENCES `ecommerce`.`client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`voiture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentcar`.`voiture` (
  `id` INT NOT NULL,
  `marque` VARCHAR(45) NOT NULL,
  `modele` VARCHAR(45) NOT NULL,
  `annee` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce`.`location_voiture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentcar`.`location_voiture` (
  `location_id` INT NOT NULL,
  `voiture_id` INT NOT NULL,
  PRIMARY KEY (`location_id`, `voiture_id`),
  INDEX `fk_location_has_voiture_voiture1_idx` (`voiture_id` ASC) ,
  INDEX `fk_location_has_voiture_location1_idx` (`location_id` ASC) ,
  CONSTRAINT `fk_location_has_voiture_location1`
    FOREIGN KEY (`location_id`)
    REFERENCES `ecommerce`.`location` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_location_has_voiture_voiture1`
    FOREIGN KEY (`voiture_id`)
    REFERENCES `ecommerce`.`voiture` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;