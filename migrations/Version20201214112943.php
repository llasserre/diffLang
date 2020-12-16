<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20201214112943 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE commande (id INT AUTO_INCREMENT NOT NULL, language_id INT DEFAULT NULL, type_commande_id INT DEFAULT NULL, ligne VARCHAR(255) NOT NULL, INDEX IDX_6EEAA67D82F1BAF4 (language_id), INDEX IDX_6EEAA67DC9F3F9C5 (type_commande_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE commande_type (id INT AUTO_INCREMENT NOT NULL, libelle VARCHAR(255) NOT NULL, decriptif VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE language (id INT AUTO_INCREMENT NOT NULL, nom VARCHAR(255) NOT NULL, descriptif VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE commande ADD CONSTRAINT FK_6EEAA67D82F1BAF4 FOREIGN KEY (language_id) REFERENCES language (id)');
        $this->addSql('ALTER TABLE commande ADD CONSTRAINT FK_6EEAA67DC9F3F9C5 FOREIGN KEY (type_commande_id) REFERENCES commande_type (id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE commande DROP FOREIGN KEY FK_6EEAA67DC9F3F9C5');
        $this->addSql('ALTER TABLE commande DROP FOREIGN KEY FK_6EEAA67D82F1BAF4');
        $this->addSql('DROP TABLE commande');
        $this->addSql('DROP TABLE commande_type');
        $this->addSql('DROP TABLE language');
    }
}
