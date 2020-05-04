<?php

namespace backend\modules\proposal\models;

use Yii;
use backend\components\AuditEntryBehaviors;
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

    public function behaviors(){
        return [ 
            
            'auditEntryBehaviors' => [
                'class' => AuditEntryBehaviors::class
             ],
            
        ];
    }
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
            ['Email', 'email'],
            [['cat1Email_1','cat1Email_2', 'cat2Email_1', 'cat2Email_2', 'cat3Email_1', 'cat3Email_1'],'email'],
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
            'cat1Name_1' => 'Name of the Individual',
            'cat1Email_1' => 'Email',
            'cat1Department_1' => 'Name of the Department',
            'cat1Name_2' => 'Name of the Individual',
            'cat1Email_2' => ' Email',
            'cat1Department_2' => 'Name of the Department',
            'cat2Name_1' => 'Name of the Individual',
            'cat2Email_1' => ' Email',
            'cat2Department_1' => 'Name of the Department',
            'cat2Name_2' => 'Name of the Individual',
            'cat2Email_2' => ' Email',
            'cat2Department_2' => 'Name of the Department',
            'cat3Name_1' => 'Name of the Individual',
            'cat3Email_1' => ' Email',
            'cat3Department_1' => 'Name of the Department',
            'cat3Name_2' => 'Name of the Individual',
            'cat3Email_2' => 'Email',
            'cat3Department_2' => 'Name of the Department',
            'Duration' => 'Duration',
            'Methodology' => 'Methodology',
            'Milestones' => 'Milestones',
            'Materials' => 'Materials',
            'Infrastructure' => 'Infrastructure',
        ];
    }
}
