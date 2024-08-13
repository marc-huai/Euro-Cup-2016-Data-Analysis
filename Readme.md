# Euro Cup 2016 SQL Queries

## Overview

This project involves analyzing Euro Cup 2016 data using SQL. The goal is to write queries that answer various questions about the tournament, such as player statistics, match outcomes, and referee actions. The project uses a relational database schema that includes tables for matches, players, teams, referees, and more.

## Database Schema

The database schema consists of the following tables:

- `playing_position`: Information about player positions.
- `player_mast`: Details of each player, including their team, position, and club.
- `player_booked`: Records of bookings (foul cards) given to players during matches.
- `player_in_out`: Information on player substitutions.
- `penalty_gk`: Records of goalkeepers during penalty shootouts.
- `match_mast`: Main match details, including date, stage, and referee.
- `goal_details`: Information on goals scored during the tournament.
- `soccer_team`: Details of each team, including match statistics.
- `soccer_country`: Country information associated with teams and referees.
- `soccer_venue`: Venue details where matches were held.
- `referee_mast`: Information about referees officiating the tournament.
- `coach_mast`: Details of the coaches for each team.
- `penalty_shootout`: Details of penalty shootouts during matches.
- `match_captain`: Records of team captains for each match.
- `asst_referee_mast`: Information on assistant referees.
- `team_coaches`: Linking coaches to teams.


## Future Enhancements

- Addition of more complex queries to analyze player and team performance.
- Integration with a frontend to visualize the data.

## Acknowledgments

- The schema and data used in this project are fromthe Euro Cup 2016 tournament.

