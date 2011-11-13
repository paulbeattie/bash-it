#!/bin/bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" ("
SCM_THEME_PROMPT_SUFFIX="${green})"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}git:("
GIT_THEME_PROMPT_SUFFIX="${green})"

function prompt_command() {
    PS1="${red}\h ${cyan}\w${green}$(scm_prompt_info)${reset_color} "
}

PROMPT_COMMAND=prompt_command;
