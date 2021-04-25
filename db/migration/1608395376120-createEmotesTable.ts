import { MigrationInterface, QueryRunner, Table } from 'typeorm'

export class createEmotesTable1608395376120 implements MigrationInterface {
  public async up (queryRunner: QueryRunner): Promise<void> {
    const emotesTable = new Table({
      name: 'emotes',
      columns: [
        {
          name: 'id',
          type: 'int',
          isPrimary: true,
          isGenerated: true
        },
        {
          name: 'available_month',
          type: 'int'
        },
        {
          name: 'emoji',
          type: 'varchar'
        },
        {
          name: 'name',
          type: 'varchar'
        },
        {
          name: 'regex',
          type: 'varchar'
        },
        {
          name: 'created_at',
          type: 'timestamp'
        },
        {
          name: 'updated_at',
          type: 'timestamp',
          isNullable: true
        }
      ]
    })

    await queryRunner.createTable(emotesTable, true)
  }

  public async down (queryRunner: QueryRunner): Promise<void> {
    await queryRunner.dropTable('emotes')
  }
}
