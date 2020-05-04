<?php

namespace backend\modules\proposal\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\modules\proposal\models\ResearchProposal;

/**
 * ResearchProposalSearch represents the model behind the search form of `backend\modules\proposal\models\ResearchProposal`.
 */
class ResearchProposalSearch extends ResearchProposal
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'Mobile', 'Duration'], 'integer'],
            [['name', 'Designation', 'College', 'Email', 'ResearchProjectTitle', 'BroadSubjectArea', 'ProjectDescription', 'Innovative', 'cat1Name_1', 'cat1Email_1', 'cat1Department_1', 'cat1Name_2', 'cat1Email_2', 'cat1Department_2', 'cat2Name_1', 'cat2Email_1', 'cat2Department_1', 'cat2Name_2', 'cat2Email_2', 'cat2Department_2', 'cat3Name_1', 'cat3Email_1', 'cat3Department_1', 'cat3Name_2', 'cat3Email_2', 'cat3Department_2', 'Methodology', 'Milestones', 'Materials', 'Infrastructure'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = ResearchProposal::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'Mobile' => $this->Mobile,
            'Duration' => $this->Duration,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'Designation', $this->Designation])
            ->andFilterWhere(['like', 'College', $this->College])
            ->andFilterWhere(['like', 'Email', $this->Email])
            ->andFilterWhere(['like', 'ResearchProjectTitle', $this->ResearchProjectTitle])
            ->andFilterWhere(['like', 'BroadSubjectArea', $this->BroadSubjectArea])
            ->andFilterWhere(['like', 'ProjectDescription', $this->ProjectDescription])
            ->andFilterWhere(['like', 'Innovative', $this->Innovative])
            ->andFilterWhere(['like', 'cat1Name_1', $this->cat1Name_1])
            ->andFilterWhere(['like', 'cat1Email_1', $this->cat1Email_1])
            ->andFilterWhere(['like', 'cat1Department_1', $this->cat1Department_1])
            ->andFilterWhere(['like', 'cat1Name_2', $this->cat1Name_2])
            ->andFilterWhere(['like', 'cat1Email_2', $this->cat1Email_2])
            ->andFilterWhere(['like', 'cat1Department_2', $this->cat1Department_2])
            ->andFilterWhere(['like', 'cat2Name_1', $this->cat2Name_1])
            ->andFilterWhere(['like', 'cat2Email_1', $this->cat2Email_1])
            ->andFilterWhere(['like', 'cat2Department_1', $this->cat2Department_1])
            ->andFilterWhere(['like', 'cat2Name_2', $this->cat2Name_2])
            ->andFilterWhere(['like', 'cat2Email_2', $this->cat2Email_2])
            ->andFilterWhere(['like', 'cat2Department_2', $this->cat2Department_2])
            ->andFilterWhere(['like', 'cat3Name_1', $this->cat3Name_1])
            ->andFilterWhere(['like', 'cat3Email_1', $this->cat3Email_1])
            ->andFilterWhere(['like', 'cat3Department_1', $this->cat3Department_1])
            ->andFilterWhere(['like', 'cat3Name_2', $this->cat3Name_2])
            ->andFilterWhere(['like', 'cat3Email_2', $this->cat3Email_2])
            ->andFilterWhere(['like', 'cat3Department_2', $this->cat3Department_2])
            ->andFilterWhere(['like', 'Methodology', $this->Methodology])
            ->andFilterWhere(['like', 'Milestones', $this->Milestones])
            ->andFilterWhere(['like', 'Materials', $this->Materials])
            ->andFilterWhere(['like', 'Infrastructure', $this->Infrastructure]);

        return $dataProvider;
    }
}
