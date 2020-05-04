<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "research_proposal".
 *
 * @property int $id
 * @property string $name
 * @property string $Designation
 * @property string $College
 * @property string $Email
 * @property int $Mobile
 * @property string $ResearchProjectTitle
 * @property string $BroadSubjectArea
 * @property string $ProjectDescription
 * @property string $Innovative
 * @property string $cat1Name_1
 * @property string|null $cat1Email_1
 * @property string $cat1Department_1
 * @property string $cat1Name_2
 * @property string|null $cat1Email_2
 * @property string $cat1Department_2
 * @property string $cat2Name_1
 * @property string|null $cat2Email_1
 * @property string $cat2Department_1
 * @property string $cat2Name_2
 * @property string|null $cat2Email_2
 * @property string $cat2Department_2
 * @property string $cat3Name_1
 * @property string|null $cat3Email_1
 * @property string $cat3Department_1
 * @property string $cat3Name_2
 * @property string|null $cat3Email_2
 * @property string $cat3Department_2
 * @property int $Duration
 * @property string $Methodology
 * @property string $Milestones
 * @property string $Materials
 * @property string $Infrastructure
 */
class ResearchProposal extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'research_proposal';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'Designation', 'College', 'Email', 'Mobile', 'ResearchProjectTitle', 'BroadSubjectArea', 'ProjectDescription', 'Innovative', 'cat1Name_1', 'cat1Department_1', 'cat1Name_2', 'cat1Department_2', 'cat2Name_1', 'cat2Department_1', 'cat2Name_2', 'cat2Department_2', 'cat3Name_1', 'cat3Department_1', 'cat3Name_2', 'cat3Department_2', 'Duration', 'Methodology', 'Milestones', 'Materials', 'Infrastructure'], 'required'],
            [['Mobile', 'Duration'], 'integer'],
            [['name', 'Designation', 'College', 'Email', 'ResearchProjectTitle', 'BroadSubjectArea', 'Innovative', 'cat1Name_1', 'cat1Email_1', 'cat1Department_1', 'cat1Name_2', 'cat1Email_2', 'cat1Department_2', 'cat2Name_1', 'cat2Email_1', 'cat2Department_1', 'cat2Name_2', 'cat2Email_2', 'cat2Department_2', 'cat3Name_1', 'cat3Email_1', 'cat3Department_1', 'cat3Name_2', 'cat3Email_2', 'cat3Department_2'], 'string', 'max' => 100],
            [['ProjectDescription', 'Methodology', 'Milestones'], 'string', 'max' => 400],
            [['Materials', 'Infrastructure'], 'string', 'max' => 500],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'Designation' => 'Designation',
            'College' => 'College',
            'Email' => 'Email',
            'Mobile' => 'Mobile',
            'ResearchProjectTitle' => 'Research Project Title',
            'BroadSubjectArea' => 'Broad Subject Area',
            'ProjectDescription' => 'Project Description',
            'Innovative' => 'Innovative',
            'cat1Name_1' => 'Cat1 Name 1',
            'cat1Email_1' => 'Cat1 Email 1',
            'cat1Department_1' => 'Cat1 Department 1',
            'cat1Name_2' => 'Cat1 Name 2',
            'cat1Email_2' => 'Cat1 Email 2',
            'cat1Department_2' => 'Cat1 Department 2',
            'cat2Name_1' => 'Cat2 Name 1',
            'cat2Email_1' => 'Cat2 Email 1',
            'cat2Department_1' => 'Cat2 Department 1',
            'cat2Name_2' => 'Cat2 Name 2',
            'cat2Email_2' => 'Cat2 Email 2',
            'cat2Department_2' => 'Cat2 Department 2',
            'cat3Name_1' => 'Cat3 Name 1',
            'cat3Email_1' => 'Cat3 Email 1',
            'cat3Department_1' => 'Cat3 Department 1',
            'cat3Name_2' => 'Cat3 Name 2',
            'cat3Email_2' => 'Cat3 Email 2',
            'cat3Department_2' => 'Cat3 Department 2',
            'Duration' => 'Duration',
            'Methodology' => 'Methodology',
            'Milestones' => 'Milestones',
            'Materials' => 'Materials',
            'Infrastructure' => 'Infrastructure',
        ];
    }
}
