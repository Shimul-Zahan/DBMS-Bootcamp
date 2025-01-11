# 1141. User Activity for the Past 30 Days I

## Problem

You are given a table `Activity` with the following columns:

| Column Name   | Type    |
|---------------|---------|
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |

- `user_id`: The unique identifier of the user.
- `session_id`: The session ID of a user activity.
- `activity_date`: The date when the activity occurred.
- `activity_type`: The type of activity (can be one of the following: `open_session`, `end_session`, `scroll_down`, `send_message`).

Each session belongs to exactly one user. The table shows the user activities on a social media platform, and we are asked to determine the **daily active user count** for a period of 30 days ending on `2019-07-27`, inclusively. A user is considered active on a day if they performed at least one activity.

Your task is to return the daily active user count for each day within the 30-day period.

### Example 1:

#### Input:

Activity table:

| user_id | session_id | activity_date | activity_type |
|---------|------------|---------------|---------------|
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |

#### Output:

| day        | active_users |
|------------|--------------|
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

#### Explanation:

- On **2019-07-20**, users 1 and 2 were active.
- On **2019-07-21**, users 2 and 3 were active.
- The date `2019-06-25` is outside the 30-day period, so it is not considered.

