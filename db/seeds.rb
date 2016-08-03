# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create([
  { title: 'What is the supreme law of the land?', answer: ['The Constitution'] },
  { title: 'What does the Constitution do?', answer: ['sets up the government', 'defines the government', 'protects basic rights of Americans']},
  { title: 'The idea of self-government is in the first three words of the Constitution. What are these words?', answer: ['We the People'] },
  { title: 'What is an amendment?', answer: ['a change (to the Constitution)' ,'an addition (to the Constitution)'] },
  { title: 'What do we call the first ten amendments to the Constitution?', answer: ['the Bill of Rights'] },
  { title: 'What is one right or freedom from the First Amendment?', answer: ['speech','religion','assembly','press', 'petition the government'] },
  { title: 'How many amendments does the Constitution have?', answer: ['twenty-seven (27)'] },
  { title: 'What did the Declaration of Independence do?', answer: ['announced our independence (from Great Britain)','declared our independence (from Great Britain)','said that the United States is free (from Great Britain)'] },
  { title: 'What are two rights in the Declaration of Independence?', answer: ['life','liberty','pursuit of happiness'] },
  { title: 'What is freedom of religion?', answer: ['You can practice any religion, or not practice a religion.'] },
  { title: 'What is the economic system in the United States?*', answer: ['capitalist economy','market economy'] },
  { title: 'What is the “rule of law”?', answer: ['Everyone must follow the law.', 'Leaders must obey the law.','Government must obey the law.', 'No one is above the law.'] },
  { title: 'Name one branch or part of the government.', answer: ['Congress', 'legislative','President', 'executive','the courts','judicial'] },
  { title: 'What stops one branch of government from becoming too powerful?', answer: ['checks and balances', 'separation of powers'] },
  { title: 'Who is in charge of the executive branch?', answer: ['the President'] },
  { title: 'Who makes federal laws?', answer: ['Congress','Senate and House (of Representatives)','(U.S. or national) legislature'] },
  { title: 'What are the two parts of the U.S. Congress?', answer: ['the Senate and House (of Representatives)'] },
  { title: 'How many U.S. Senators are there?', answer: ['one hundred (100)'] },
  { title: 'We elect a U.S. Senator for how many years? ', answer: ['six (6)'] },
  { title: 'Who is one of your state’s U.S. Senators now?', answer: ['Answers will vary. [District of Columbia residents and residents of U.S. territories should answer that D.C.
(or the territory where the applicant lives) has no U.S. Senators.]'] },
  { title: 'The House of Representatives has how many voting members? ', answer: ['four hundred thirty-five (435)'] },
  { title: 'We elect a U.S. Representative for how many years?', answer: ['two (2)'] },
  { title: 'Name your U.S. Representative', answer: ['Answers will vary. [Residents of territories with nonvoting Delegates or Resident Commissioners may
provide the name of that Delegate or Commissioner. Also acceptable is any statement that the territory has
no (voting) Representatives in Congress.]'] },
  { title: 'Who does a U.S. Senator represent?', answer: ['all people of the state'] },
  { title: 'Why do some states have more Representatives than other states?', answer: ['(because of) the state’s population', '(because) they have more people','(because) some states have more people'] },
  { title: 'We elect a President for how many years?', answer: ['four (4)'] },
  { title: 'In what month do we vote for President?', answer: ['November'] },
  { title: 'What is the name of the President of the United States now?', answer: ['Barack Obama','Obama'] },
  { title: 'What is the name of the Vice President of the United States now?', answer: ['Joseph R. Biden, Jr','Joe Biden','Biden'] },
  { title: 'If the President can no longer serve, who becomes President?', answer: ['the Vice President'] },
  { title: 'If both the President and the Vice President can no longer serve, who becomes President?', answer: ['the Speaker of the House'] },
  { title: 'Who is the Commander in Chief of the military?', answer: ['the President'] },
  { title: 'Who signs bills to become laws?', answer: ['the President'] },
  { title: 'Who vetoes bills?', answer: ['the President'] },
  { title: 'What does the President’s Cabinet do?', answer: ['advises the President'] },
  { title: 'What are two Cabinet-level positions?', answer: ['Secretary of Agriculture','Secretary of Commerce','Secretary of Defense','Secretary of Education','Secretary of Energy','Secretary of Health and Human Services','Secretary of Homeland Security','Secretary of Housing and Urban Development','Secretary of the Interior','Secretary of Labor','Secretary of State','Secretary of Transportation','Secretary of the Treasury','Secretary of Veterans Affairs','Attorney General','Vice President'] },
  { title: 'What does the judicial branch do?', answer: ['reviews laws','explains laws','resolves disputes (disagreements)','decides if a law goes against the Constitution'] },

  ])
