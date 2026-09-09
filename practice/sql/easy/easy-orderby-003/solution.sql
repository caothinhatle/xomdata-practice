-- Xom Data · Most watched videos this week
-- Problem: https://xomdata.com/practice/easy-orderby-003
-- Solved: 2026-09-08

select
video_title,
weekly_views
from videos
ORDER BY 2 DESC, 1
