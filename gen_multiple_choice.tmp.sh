ruby script/generate scaffold m_assessment name:string description:text active:boolean group_id:integer
ruby script/generate scaffold m_question m_assessment_id:integer body:text
ruby script/generate scaffold m_answer m_question_id:integer m_category_id:integer body:text
ruby script/generate scaffold m_assessment_take user_id:integer m_assessment_id:integer
ruby script/generate scaffold m_question_take m_assessment_take_id:integer
ruby script/generate scaffold m_category m_assessment_id:integer name:string description:text
ruby script/generate scaffold m_answer_take m_question_take_id:integer m_answer_id:integer
rake db:migrate