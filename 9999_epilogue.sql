

--
-- Name: active_record_views active_record_views_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.active_record_views
    ADD CONSTRAINT active_record_views_pkey PRIMARY KEY (name);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: api_users api_users_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.api_users
    ADD CONSTRAINT api_users_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: bla_badges bla_badges_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.bla_badges
    ADD CONSTRAINT bla_badges_pkey PRIMARY KEY (id);


--
-- Name: change_logs change_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_logs
    ADD CONSTRAINT change_logs_pkey PRIMARY KEY (id);


--
-- Name: change_requests change_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_pkey PRIMARY KEY (id);


--
-- Name: competition_files competition_files_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.competition_files
    ADD CONSTRAINT competition_files_pkey PRIMARY KEY (id);


--
-- Name: competitions competitions_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT competitions_pkey PRIMARY KEY (id);


--
-- Name: entity_merges entity_merges_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.entity_merges
    ADD CONSTRAINT entity_merges_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: federal_states federal_states_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.federal_states
    ADD CONSTRAINT federal_states_pkey PRIMARY KEY (id);


--
-- Name: group_score_categories group_score_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_score_categories
    ADD CONSTRAINT group_score_categories_pkey PRIMARY KEY (id);


--
-- Name: group_score_types group_score_types_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_score_types
    ADD CONSTRAINT group_score_types_pkey PRIMARY KEY (id);


--
-- Name: group_scores group_scores_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_scores
    ADD CONSTRAINT group_scores_pkey PRIMARY KEY (id);


--
-- Name: import_request_files import_request_files_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.import_request_files
    ADD CONSTRAINT import_request_files_pkey PRIMARY KEY (id);


--
-- Name: import_requests import_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.import_requests
    ADD CONSTRAINT import_requests_pkey PRIMARY KEY (id);


--
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


--
-- Name: m3_assets m3_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.m3_assets
    ADD CONSTRAINT m3_assets_pkey PRIMARY KEY (id);


--
-- Name: m3_logins m3_logins_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.m3_logins
    ADD CONSTRAINT m3_logins_pkey PRIMARY KEY (id);


--
-- Name: nations nations_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.nations
    ADD CONSTRAINT nations_pkey PRIMARY KEY (id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: person_participations person_participations_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.person_participations
    ADD CONSTRAINT person_participations_pkey PRIMARY KEY (id);


--
-- Name: person_spellings person_spellings_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.person_spellings
    ADD CONSTRAINT person_spellings_pkey PRIMARY KEY (id);


--
-- Name: places places_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);


--
-- Name: score_types score_types_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.score_types
    ADD CONSTRAINT score_types_pkey PRIMARY KEY (id);


--
-- Name: scores scores_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT scores_pkey PRIMARY KEY (id);


--
-- Name: series_cups series_cups_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_cups
    ADD CONSTRAINT series_cups_pkey PRIMARY KEY (id);


--
-- Name: series_kinds series_kinds_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_kinds
    ADD CONSTRAINT series_kinds_pkey PRIMARY KEY (id);


--
-- Name: series_person_assessments series_person_assessments_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_person_assessments
    ADD CONSTRAINT series_person_assessments_pkey PRIMARY KEY (id);


--
-- Name: series_person_participations series_person_participations_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_person_participations
    ADD CONSTRAINT series_person_participations_pkey PRIMARY KEY (id);


--
-- Name: series_rounds series_rounds_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_rounds
    ADD CONSTRAINT series_rounds_pkey PRIMARY KEY (id);


--
-- Name: series_team_assessments series_team_assessments_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_team_assessments
    ADD CONSTRAINT series_team_assessments_pkey PRIMARY KEY (id);


--
-- Name: series_team_participations series_team_participations_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_team_participations
    ADD CONSTRAINT series_team_participations_pkey PRIMARY KEY (id);


--
-- Name: single_disciplines single_disciplines_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.single_disciplines
    ADD CONSTRAINT single_disciplines_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_blocked_executions solid_queue_blocked_executions_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_blocked_executions
    ADD CONSTRAINT solid_queue_blocked_executions_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_claimed_executions solid_queue_claimed_executions_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_claimed_executions
    ADD CONSTRAINT solid_queue_claimed_executions_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_failed_executions solid_queue_failed_executions_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_failed_executions
    ADD CONSTRAINT solid_queue_failed_executions_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_jobs solid_queue_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_jobs
    ADD CONSTRAINT solid_queue_jobs_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_pauses solid_queue_pauses_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_pauses
    ADD CONSTRAINT solid_queue_pauses_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_processes solid_queue_processes_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_processes
    ADD CONSTRAINT solid_queue_processes_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_ready_executions solid_queue_ready_executions_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_ready_executions
    ADD CONSTRAINT solid_queue_ready_executions_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_recurring_executions solid_queue_recurring_executions_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_recurring_executions
    ADD CONSTRAINT solid_queue_recurring_executions_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_recurring_tasks solid_queue_recurring_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_recurring_tasks
    ADD CONSTRAINT solid_queue_recurring_tasks_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_scheduled_executions solid_queue_scheduled_executions_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_scheduled_executions
    ADD CONSTRAINT solid_queue_scheduled_executions_pkey PRIMARY KEY (id);


--
-- Name: solid_queue_semaphores solid_queue_semaphores_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_semaphores
    ADD CONSTRAINT solid_queue_semaphores_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: team_spellings team_spellings_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.team_spellings
    ADD CONSTRAINT team_spellings_pkey PRIMARY KEY (id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: active_record_views_class_name_index; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX active_record_views_class_name_index ON public.active_record_views USING btree (class_name);


--
-- Name: index_admin_users_on_login_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_admin_users_on_login_id ON public.admin_users USING btree (login_id);


--
-- Name: index_bla_badges_on_hb_score_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_bla_badges_on_hb_score_id ON public.bla_badges USING btree (hb_score_id);


--
-- Name: index_bla_badges_on_hl_score_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_bla_badges_on_hl_score_id ON public.bla_badges USING btree (hl_score_id);


--
-- Name: index_bla_badges_on_person_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_bla_badges_on_person_id ON public.bla_badges USING btree (person_id);


--
-- Name: index_change_logs_on_admin_user_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_change_logs_on_admin_user_id ON public.change_logs USING btree (admin_user_id);


--
-- Name: index_change_logs_on_api_user_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_change_logs_on_api_user_id ON public.change_logs USING btree (api_user_id);


--
-- Name: index_change_requests_on_admin_user_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_change_requests_on_admin_user_id ON public.change_requests USING btree (admin_user_id);


--
-- Name: index_change_requests_on_api_user_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_change_requests_on_api_user_id ON public.change_requests USING btree (api_user_id);


--
-- Name: index_competition_files_on_competition_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_competition_files_on_competition_id ON public.competition_files USING btree (competition_id);


--
-- Name: index_competitions_on_event_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_competitions_on_event_id ON public.competitions USING btree (event_id);


--
-- Name: index_competitions_on_id_and_year; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_competitions_on_id_and_year ON public.competitions USING btree (id, year);


--
-- Name: index_competitions_on_place_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_competitions_on_place_id ON public.competitions USING btree (place_id);


--
-- Name: index_competitions_on_score_type_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_competitions_on_score_type_id ON public.competitions USING btree (score_type_id);


--
-- Name: index_competitions_on_year; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_competitions_on_year ON public.competitions USING btree (year);


--
-- Name: index_entity_merges_on_source_type_and_source_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_entity_merges_on_source_type_and_source_id ON public.entity_merges USING btree (source_type, source_id);


--
-- Name: index_entity_merges_on_target_type_and_target_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_entity_merges_on_target_type_and_target_id ON public.entity_merges USING btree (target_type, target_id);


--
-- Name: index_group_score_categories_on_competition_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_group_score_categories_on_competition_id ON public.group_score_categories USING btree (competition_id);


--
-- Name: index_group_score_categories_on_group_score_type_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_group_score_categories_on_group_score_type_id ON public.group_score_categories USING btree (group_score_type_id);


--
-- Name: index_group_scores_on_group_score_category_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_group_scores_on_group_score_category_id ON public.group_scores USING btree (group_score_category_id);


--
-- Name: index_group_scores_on_team_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_group_scores_on_team_id ON public.group_scores USING btree (team_id);


--
-- Name: index_import_request_files_on_import_request_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_import_request_files_on_import_request_id ON public.import_request_files USING btree (import_request_id);


--
-- Name: index_import_requests_on_admin_user_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_import_requests_on_admin_user_id ON public.import_requests USING btree (admin_user_id);


--
-- Name: index_import_requests_on_edit_user_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_import_requests_on_edit_user_id ON public.import_requests USING btree (edit_user_id);


--
-- Name: index_import_requests_on_event_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_import_requests_on_event_id ON public.import_requests USING btree (event_id);


--
-- Name: index_import_requests_on_place_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_import_requests_on_place_id ON public.import_requests USING btree (place_id);


--
-- Name: index_m3_logins_on_changed_email_address_token; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_m3_logins_on_changed_email_address_token ON public.m3_logins USING btree (changed_email_address_token);


--
-- Name: index_m3_logins_on_password_reset_token; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_m3_logins_on_password_reset_token ON public.m3_logins USING btree (password_reset_token);


--
-- Name: index_m3_logins_on_verify_token; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_m3_logins_on_verify_token ON public.m3_logins USING btree (verify_token);


--
-- Name: index_people_on_gender; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_people_on_gender ON public.people USING btree (gender);


--
-- Name: index_people_on_nation_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_people_on_nation_id ON public.people USING btree (nation_id);


--
-- Name: index_person_participations_on_group_score_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_person_participations_on_group_score_id ON public.person_participations USING btree (group_score_id);


--
-- Name: index_person_participations_on_person_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_person_participations_on_person_id ON public.person_participations USING btree (person_id);


--
-- Name: index_person_spellings_on_person_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_person_spellings_on_person_id ON public.person_spellings USING btree (person_id);


--
-- Name: index_scores_for_year_overview; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_scores_for_year_overview ON public.scores USING btree (person_id, single_discipline_id, competition_id, "time");


--
-- Name: index_scores_on_competition_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_scores_on_competition_id ON public.scores USING btree (competition_id);


--
-- Name: index_scores_on_person_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_scores_on_person_id ON public.scores USING btree (person_id);


--
-- Name: index_scores_on_single_discipline_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_scores_on_single_discipline_id ON public.scores USING btree (single_discipline_id);


--
-- Name: index_scores_on_team_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_scores_on_team_id ON public.scores USING btree (team_id);


--
-- Name: index_series_kinds_on_slug; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_series_kinds_on_slug ON public.series_kinds USING btree (slug);


--
-- Name: index_series_person_assessments_on_discipline; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_person_assessments_on_discipline ON public.series_person_assessments USING btree (discipline);


--
-- Name: index_series_person_assessments_on_key; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_person_assessments_on_key ON public.series_person_assessments USING btree (key);


--
-- Name: index_series_person_assessments_on_round_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_person_assessments_on_round_id ON public.series_person_assessments USING btree (round_id);


--
-- Name: index_series_person_participations_on_cup_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_person_participations_on_cup_id ON public.series_person_participations USING btree (cup_id);


--
-- Name: index_series_person_participations_on_person_assessment_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_person_participations_on_person_assessment_id ON public.series_person_participations USING btree (person_assessment_id);


--
-- Name: index_series_person_participations_on_person_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_person_participations_on_person_id ON public.series_person_participations USING btree (person_id);


--
-- Name: index_series_rounds_on_kind_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_rounds_on_kind_id ON public.series_rounds USING btree (kind_id);


--
-- Name: index_series_team_assessments_on_discipline; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_team_assessments_on_discipline ON public.series_team_assessments USING btree (discipline);


--
-- Name: index_series_team_assessments_on_key; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_team_assessments_on_key ON public.series_team_assessments USING btree (key);


--
-- Name: index_series_team_assessments_on_round_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_team_assessments_on_round_id ON public.series_team_assessments USING btree (round_id);


--
-- Name: index_series_team_participations_on_cup_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_team_participations_on_cup_id ON public.series_team_participations USING btree (cup_id);


--
-- Name: index_series_team_participations_on_team_assessment_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_team_participations_on_team_assessment_id ON public.series_team_participations USING btree (team_assessment_id);


--
-- Name: index_series_team_participations_on_team_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_team_participations_on_team_id ON public.series_team_participations USING btree (team_id);


--
-- Name: index_series_team_participations_on_team_number; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_team_participations_on_team_number ON public.series_team_participations USING btree (team_number);


--
-- Name: index_solid_queue_blocked_executions_for_maintenance; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_blocked_executions_for_maintenance ON public.solid_queue_blocked_executions USING btree (expires_at, concurrency_key);


--
-- Name: index_solid_queue_blocked_executions_for_release; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_blocked_executions_for_release ON public.solid_queue_blocked_executions USING btree (concurrency_key, priority, job_id);


--
-- Name: index_solid_queue_blocked_executions_on_job_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_blocked_executions_on_job_id ON public.solid_queue_blocked_executions USING btree (job_id);


--
-- Name: index_solid_queue_claimed_executions_on_job_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_claimed_executions_on_job_id ON public.solid_queue_claimed_executions USING btree (job_id);


--
-- Name: index_solid_queue_claimed_executions_on_process_id_and_job_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_claimed_executions_on_process_id_and_job_id ON public.solid_queue_claimed_executions USING btree (process_id, job_id);


--
-- Name: index_solid_queue_dispatch_all; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_dispatch_all ON public.solid_queue_scheduled_executions USING btree (scheduled_at, priority, job_id);


--
-- Name: index_solid_queue_failed_executions_on_job_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_failed_executions_on_job_id ON public.solid_queue_failed_executions USING btree (job_id);


--
-- Name: index_solid_queue_jobs_for_alerting; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_jobs_for_alerting ON public.solid_queue_jobs USING btree (scheduled_at, finished_at);


--
-- Name: index_solid_queue_jobs_for_filtering; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_jobs_for_filtering ON public.solid_queue_jobs USING btree (queue_name, finished_at);


--
-- Name: index_solid_queue_jobs_on_active_job_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_jobs_on_active_job_id ON public.solid_queue_jobs USING btree (active_job_id);


--
-- Name: index_solid_queue_jobs_on_class_name; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_jobs_on_class_name ON public.solid_queue_jobs USING btree (class_name);


--
-- Name: index_solid_queue_jobs_on_finished_at; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_jobs_on_finished_at ON public.solid_queue_jobs USING btree (finished_at);


--
-- Name: index_solid_queue_pauses_on_queue_name; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_pauses_on_queue_name ON public.solid_queue_pauses USING btree (queue_name);


--
-- Name: index_solid_queue_poll_all; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_poll_all ON public.solid_queue_ready_executions USING btree (priority, job_id);


--
-- Name: index_solid_queue_poll_by_queue; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_poll_by_queue ON public.solid_queue_ready_executions USING btree (queue_name, priority, job_id);


--
-- Name: index_solid_queue_processes_on_last_heartbeat_at; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_processes_on_last_heartbeat_at ON public.solid_queue_processes USING btree (last_heartbeat_at);


--
-- Name: index_solid_queue_processes_on_name_and_supervisor_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_processes_on_name_and_supervisor_id ON public.solid_queue_processes USING btree (name, supervisor_id);


--
-- Name: index_solid_queue_processes_on_supervisor_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_processes_on_supervisor_id ON public.solid_queue_processes USING btree (supervisor_id);


--
-- Name: index_solid_queue_ready_executions_on_job_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_ready_executions_on_job_id ON public.solid_queue_ready_executions USING btree (job_id);


--
-- Name: index_solid_queue_recurring_executions_on_job_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_recurring_executions_on_job_id ON public.solid_queue_recurring_executions USING btree (job_id);


--
-- Name: index_solid_queue_recurring_executions_on_task_key_and_run_at; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_recurring_executions_on_task_key_and_run_at ON public.solid_queue_recurring_executions USING btree (task_key, run_at);


--
-- Name: index_solid_queue_recurring_tasks_on_key; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_recurring_tasks_on_key ON public.solid_queue_recurring_tasks USING btree (key);


--
-- Name: index_solid_queue_recurring_tasks_on_static; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_recurring_tasks_on_static ON public.solid_queue_recurring_tasks USING btree (static);


--
-- Name: index_solid_queue_scheduled_executions_on_job_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_scheduled_executions_on_job_id ON public.solid_queue_scheduled_executions USING btree (job_id);


--
-- Name: index_solid_queue_semaphores_on_expires_at; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_semaphores_on_expires_at ON public.solid_queue_semaphores USING btree (expires_at);


--
-- Name: index_solid_queue_semaphores_on_key; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX index_solid_queue_semaphores_on_key ON public.solid_queue_semaphores USING btree (key);


--
-- Name: index_solid_queue_semaphores_on_key_and_value; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_solid_queue_semaphores_on_key_and_value ON public.solid_queue_semaphores USING btree (key, value);


--
-- Name: index_team_spellings_on_team_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_team_spellings_on_team_id ON public.team_spellings USING btree (team_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE UNIQUE INDEX unique_schema_migrations ON public.schema_migrations USING btree (version);


--
-- Name: group_score_categories fk_rails_087bd7ddca; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_score_categories
    ADD CONSTRAINT fk_rails_087bd7ddca FOREIGN KEY (group_score_type_id) REFERENCES public.group_score_types(id);


--
-- Name: person_participations fk_rails_0a382359da; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.person_participations
    ADD CONSTRAINT fk_rails_0a382359da FOREIGN KEY (person_id) REFERENCES public.people(id);


--
-- Name: team_spellings fk_rails_0fda230754; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.team_spellings
    ADD CONSTRAINT fk_rails_0fda230754 FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- Name: scores fk_rails_17052afd34; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT fk_rails_17052afd34 FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- Name: series_person_participations fk_rails_1914343401; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_person_participations
    ADD CONSTRAINT fk_rails_1914343401 FOREIGN KEY (person_id) REFERENCES public.people(id);


--
-- Name: bla_badges fk_rails_21a671eac2; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.bla_badges
    ADD CONSTRAINT fk_rails_21a671eac2 FOREIGN KEY (person_id) REFERENCES public.people(id);


--
-- Name: scores fk_rails_23d89423d6; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT fk_rails_23d89423d6 FOREIGN KEY (competition_id) REFERENCES public.competitions(id);


--
-- Name: admin_users fk_rails_2eecc1a1f5; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT fk_rails_2eecc1a1f5 FOREIGN KEY (login_id) REFERENCES public.m3_logins(id);


--
-- Name: series_person_participations fk_rails_317a639550; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_person_participations
    ADD CONSTRAINT fk_rails_317a639550 FOREIGN KEY (cup_id) REFERENCES public.series_cups(id);


--
-- Name: solid_queue_recurring_executions fk_rails_318a5533ed; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_recurring_executions
    ADD CONSTRAINT fk_rails_318a5533ed FOREIGN KEY (job_id) REFERENCES public.solid_queue_jobs(id) ON DELETE CASCADE;


--
-- Name: change_logs fk_rails_31ecca654e; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_logs
    ADD CONSTRAINT fk_rails_31ecca654e FOREIGN KEY (api_user_id) REFERENCES public.api_users(id);


--
-- Name: competitions fk_rails_339a5440d1; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT fk_rails_339a5440d1 FOREIGN KEY (event_id) REFERENCES public.events(id);


--
-- Name: solid_queue_failed_executions fk_rails_39bbc7a631; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_failed_executions
    ADD CONSTRAINT fk_rails_39bbc7a631 FOREIGN KEY (job_id) REFERENCES public.solid_queue_jobs(id) ON DELETE CASCADE;


--
-- Name: change_requests fk_rails_4716775f9d; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT fk_rails_4716775f9d FOREIGN KEY (api_user_id) REFERENCES public.api_users(id);


--
-- Name: series_team_participations fk_rails_4c3c8b229e; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_team_participations
    ADD CONSTRAINT fk_rails_4c3c8b229e FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- Name: solid_queue_blocked_executions fk_rails_4cd34e2228; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_blocked_executions
    ADD CONSTRAINT fk_rails_4cd34e2228 FOREIGN KEY (job_id) REFERENCES public.solid_queue_jobs(id) ON DELETE CASCADE;


--
-- Name: series_team_participations fk_rails_53cc6debcc; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_team_participations
    ADD CONSTRAINT fk_rails_53cc6debcc FOREIGN KEY (cup_id) REFERENCES public.series_cups(id);


--
-- Name: series_cups fk_rails_63932e2707; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_cups
    ADD CONSTRAINT fk_rails_63932e2707 FOREIGN KEY (competition_id) REFERENCES public.competitions(id);


--
-- Name: person_participations fk_rails_6d79ed02ed; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.person_participations
    ADD CONSTRAINT fk_rails_6d79ed02ed FOREIGN KEY (group_score_id) REFERENCES public.group_scores(id);


--
-- Name: scores fk_rails_77d69e8944; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT fk_rails_77d69e8944 FOREIGN KEY (single_discipline_id) REFERENCES public.single_disciplines(id);


--
-- Name: competitions fk_rails_7f26f3b040; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT fk_rails_7f26f3b040 FOREIGN KEY (score_type_id) REFERENCES public.score_types(id);


--
-- Name: bla_badges fk_rails_7fbfa6b42e; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.bla_badges
    ADD CONSTRAINT fk_rails_7fbfa6b42e FOREIGN KEY (hb_score_id) REFERENCES public.scores(id);


--
-- Name: solid_queue_ready_executions fk_rails_81fcbd66af; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_ready_executions
    ADD CONSTRAINT fk_rails_81fcbd66af FOREIGN KEY (job_id) REFERENCES public.solid_queue_jobs(id) ON DELETE CASCADE;


--
-- Name: scores fk_rails_88b53fe618; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT fk_rails_88b53fe618 FOREIGN KEY (person_id) REFERENCES public.people(id);


--
-- Name: series_rounds fk_rails_8a49b1fe86; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_rounds
    ADD CONSTRAINT fk_rails_8a49b1fe86 FOREIGN KEY (kind_id) REFERENCES public.series_kinds(id);


--
-- Name: solid_queue_claimed_executions fk_rails_9cfe4d4944; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_claimed_executions
    ADD CONSTRAINT fk_rails_9cfe4d4944 FOREIGN KEY (job_id) REFERENCES public.solid_queue_jobs(id) ON DELETE CASCADE;


--
-- Name: group_score_categories fk_rails_a3a6694385; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_score_categories
    ADD CONSTRAINT fk_rails_a3a6694385 FOREIGN KEY (competition_id) REFERENCES public.competitions(id);


--
-- Name: series_team_participations fk_rails_a89f618238; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_team_participations
    ADD CONSTRAINT fk_rails_a89f618238 FOREIGN KEY (team_assessment_id) REFERENCES public.series_team_assessments(id);


--
-- Name: person_spellings fk_rails_a9dc923e30; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.person_spellings
    ADD CONSTRAINT fk_rails_a9dc923e30 FOREIGN KEY (person_id) REFERENCES public.people(id);


--
-- Name: series_person_participations fk_rails_b1bd31a8dc; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_person_participations
    ADD CONSTRAINT fk_rails_b1bd31a8dc FOREIGN KEY (person_assessment_id) REFERENCES public.series_person_assessments(id);


--
-- Name: series_person_assessments fk_rails_b4efda4528; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_person_assessments
    ADD CONSTRAINT fk_rails_b4efda4528 FOREIGN KEY (round_id) REFERENCES public.series_rounds(id);


--
-- Name: group_scores fk_rails_bb2ca8f375; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_scores
    ADD CONSTRAINT fk_rails_bb2ca8f375 FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- Name: competition_files fk_rails_c1790da592; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.competition_files
    ADD CONSTRAINT fk_rails_c1790da592 FOREIGN KEY (competition_id) REFERENCES public.competitions(id);


--
-- Name: people fk_rails_c201f283e7; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT fk_rails_c201f283e7 FOREIGN KEY (nation_id) REFERENCES public.nations(id);


--
-- Name: solid_queue_scheduled_executions fk_rails_c4316f352d; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.solid_queue_scheduled_executions
    ADD CONSTRAINT fk_rails_c4316f352d FOREIGN KEY (job_id) REFERENCES public.solid_queue_jobs(id) ON DELETE CASCADE;


--
-- Name: series_team_assessments fk_rails_cc55c86aa7; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_team_assessments
    ADD CONSTRAINT fk_rails_cc55c86aa7 FOREIGN KEY (round_id) REFERENCES public.series_rounds(id);


--
-- Name: change_requests fk_rails_d283e0df68; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT fk_rails_d283e0df68 FOREIGN KEY (admin_user_id) REFERENCES public.admin_users(id);


--
-- Name: change_logs fk_rails_d36db08295; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_logs
    ADD CONSTRAINT fk_rails_d36db08295 FOREIGN KEY (admin_user_id) REFERENCES public.admin_users(id);


--
-- Name: competitions fk_rails_deb9c05685; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT fk_rails_deb9c05685 FOREIGN KEY (place_id) REFERENCES public.places(id);


--
-- Name: group_scores fk_rails_e53e7ce3f3; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_scores
    ADD CONSTRAINT fk_rails_e53e7ce3f3 FOREIGN KEY (group_score_category_id) REFERENCES public.group_score_categories(id);


--
-- Name: series_cups fk_rails_ecdcb1c04e; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_cups
    ADD CONSTRAINT fk_rails_ecdcb1c04e FOREIGN KEY (round_id) REFERENCES public.series_rounds(id);


--
-- Name: bla_badges fk_rails_f2238e0ce7; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.bla_badges
    ADD CONSTRAINT fk_rails_f2238e0ce7 FOREIGN KEY (hl_score_id) REFERENCES public.scores(id);


--
-- Name: import_request_files fk_rails_f3bbce993e; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.import_request_files
    ADD CONSTRAINT fk_rails_f3bbce993e FOREIGN KEY (import_request_id) REFERENCES public.import_requests(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict hrv88bK0v6OqYX6bPkUkJymBDTmTOW7SM97iccvqeHRiGminmANLqGuUzR3i8kn

