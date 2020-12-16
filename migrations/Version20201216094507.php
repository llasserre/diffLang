<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20201216094507 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE type_cmd_family (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE commande_type ADD type_cmd_family_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE commande_type ADD CONSTRAINT FK_E7B256CAF718507A FOREIGN KEY (type_cmd_family_id) REFERENCES type_cmd_family (id)');
        $this->addSql('CREATE INDEX IDX_E7B256CAF718507A ON commande_type (type_cmd_family_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE commande_type DROP FOREIGN KEY FK_E7B256CAF718507A');
        $this->addSql('DROP TABLE type_cmd_family');
        $this->addSql('DROP INDEX IDX_E7B256CAF718507A ON commande_type');
        $this->addSql('ALTER TABLE commande_type DROP type_cmd_family_id');
    }
}
