select 
    st.student_id, 
    st.student_name, 
    sj.subject_name,
    count(e.student_id) as attended_exams
from Students st
cross join Subjects sj
left join Examinations e
    on st.student_id = e.student_id and sj.subject_name = e.subject_name
group by st.student_id, st.student_name, sj.subject_name
order by st.student_id, sj.subject_name