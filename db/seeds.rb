
#This script will build a basic test database
#Make sure nothing else is connecting to the database while this script runs

#Create a test group/user#############################

Group.seed(:name,:greeting,:password) do |g|  #
  g.name = "TestGroup"
  g.greeting = "Test custom greetings from test group. :-)"
  g.password = "test"
end

group = Group.find(:first, :conditions=> ["name = ? and password = ?","TestGroup","test"])

User.seed(:username,:firstname,:lastname,:password,:adminlevel,:group_id) do |u|
  u.username = "test"
  u.firstname = "FirstName"
  u.lastname = "LastName"
  u.password = "test"
  u.adminlevel = 0
  u.group_id = 0
end

user = User.find(:first, :conditions=> ["username = ? and password = ?","test","test"])

group.users << user


#Create a test m_assessment##############################

MAssessment.seed(:name,:description,:active,:group_id) do |a|
  a.name = "TestAssessment"
  a.description = "This is a test assessment"
  a.active = true
  a.group_id = 0
end
assessment = MAssessment.find(:last)
puts assessment.id
group.m_assessments << assessment

MQuestion.seed(:m_assessment_id,:body) do |q|
  q.m_assessment_id = 0
  q.body = "Please select what categories apply to you"
end
question = MQuestion.find(:last)

assessment.m_questions << question

MCategory.seed(:m_assessment_id,:name,:description) do |c|
  c.m_assessment_id = 0
  c.name = "Category1"
  c.description = "Category 1 is, well, the first category..."
end
cat1 = MCategory.find(:last)

MCategory.seed(:m_assessment_id,:name,:description) do |c|
  c.m_assessment_id = 0
  c.name = "Category2"
  c.description = "Category 2 is, well, the first category..."
end
cat2 = MCategory.find(:last)


MAnswer.seed(:m_question_id,:m_category_id,:body) do |a|
  a.m_question_id = 0
  a.m_category_id = 0
  a.body = "This first answer results in category 1"
end
answer1=MAnswer.find(:last)

MAnswer.seed(:m_question_id,:m_category_id,:body) do |a|
  a.m_question_id = 0
  a.m_category_id = 0
  a.body = "This second answer results in category 2"
end
answer2=MAnswer.find(:last)

cat1.m_answers << answer1
cat2.m_answers << answer2
question.m_answers << answer1
question.m_answers << answer1

MAssessmentTake.seed(:user_id,:m_assessment_id) do |a|
  a.user_id = 0
  a.m_assessment_id = 0
end
assessment_take = MAssessmentTake.find(:last)

user.m_assessment_takes << assessment_take
assessment.m_assessment_takes << assessment_take

MQuestionTake.seed(:m_assessment_take_id, :m_question_id) do |q|
  q.m_assessment_take_id = 0
  q.m_question_id = 0
end
questiontake = MQuestionTake.find(:last)

assessment_take.m_question_takes << questiontake
questiontake.m_question_id = 1
questiontake.m_assessment_take_id = 1

puts questiontake.m_assessment_take

puts questiontake.save!

MAnswerTake.seed(:m_question_take_id) do |a|
  a.m_question_take_id = 0
end
answertake = MAnswerTake.find(:last)

questiontake.m_answer_takes << answertake


MAnswerTake.seed(:m_question_take_id) do |a|
  a.m_question_take_id = 0
end
answertake = MAnswerTake.find(:last)

questiontake.m_answer_takes << answertake




#Done########################################