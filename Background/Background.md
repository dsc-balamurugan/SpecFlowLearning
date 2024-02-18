# Background

• Background keyword is used to define steps that are common to all scenarios.

• Steps that are defined within background will execute before each scenarios.

• If you are having more precondition step that are common to all scenarios, we can keep them in background. But we cannot keep the common steps that are inbetween or at end. For example, if a fourth step line is common in all scenarios, we cannot keep it in background.

• It is recommended to keep unimportant common steps that are no need to seen by others in background.

• Background cannot have an Examples: section, hence we cannot use scenario outline step which contains <> parameter inside background

• Background section should be on top
