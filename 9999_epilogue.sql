

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
-- Name: delayed_jobs delayed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);


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
-- Name: series_assessments series_assessments_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_assessments
    ADD CONSTRAINT series_assessments_pkey PRIMARY KEY (id);


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
-- Name: series_participations series_participations_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_participations
    ADD CONSTRAINT series_participations_pkey PRIMARY KEY (id);


--
-- Name: series_rounds series_rounds_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_rounds
    ADD CONSTRAINT series_rounds_pkey PRIMARY KEY (id);


--
-- Name: single_disciplines single_disciplines_pkey; Type: CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.single_disciplines
    ADD CONSTRAINT single_disciplines_pkey PRIMARY KEY (id);


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
-- Name: delayed_jobs_priority; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX delayed_jobs_priority ON public.delayed_jobs USING btree (priority, run_at);


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
-- Name: index_series_rounds_on_kind_id; Type: INDEX; Schema: public; Owner: feuerwehrsport-statistik
--

CREATE INDEX index_series_rounds_on_kind_id ON public.series_rounds USING btree (kind_id);


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
-- Name: series_participations fk_rails_10e3de7ab6; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_participations
    ADD CONSTRAINT fk_rails_10e3de7ab6 FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- Name: series_participations fk_rails_15526a74ba; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_participations
    ADD CONSTRAINT fk_rails_15526a74ba FOREIGN KEY (cup_id) REFERENCES public.series_cups(id);


--
-- Name: scores fk_rails_17052afd34; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT fk_rails_17052afd34 FOREIGN KEY (team_id) REFERENCES public.teams(id);


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
-- Name: series_assessments fk_rails_2fdd48a6eb; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_assessments
    ADD CONSTRAINT fk_rails_2fdd48a6eb FOREIGN KEY (round_id) REFERENCES public.series_rounds(id);


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
-- Name: change_requests fk_rails_4716775f9d; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT fk_rails_4716775f9d FOREIGN KEY (api_user_id) REFERENCES public.api_users(id);


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
-- Name: group_score_categories fk_rails_a3a6694385; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.group_score_categories
    ADD CONSTRAINT fk_rails_a3a6694385 FOREIGN KEY (competition_id) REFERENCES public.competitions(id);


--
-- Name: person_spellings fk_rails_a9dc923e30; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.person_spellings
    ADD CONSTRAINT fk_rails_a9dc923e30 FOREIGN KEY (person_id) REFERENCES public.people(id);


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
-- Name: series_participations fk_rails_e0f7fe67d8; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_participations
    ADD CONSTRAINT fk_rails_e0f7fe67d8 FOREIGN KEY (assessment_id) REFERENCES public.series_assessments(id);


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
-- Name: series_participations fk_rails_fb34e7583c; Type: FK CONSTRAINT; Schema: public; Owner: feuerwehrsport-statistik
--

ALTER TABLE ONLY public.series_participations
    ADD CONSTRAINT fk_rails_fb34e7583c FOREIGN KEY (person_id) REFERENCES public.people(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict ugApOTqSRgNeTKV33WEB3Yuop9MctTKMqv4eiD7uKkNWm86XTw2kU2roNrvKBWA

