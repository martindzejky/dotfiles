---
name: brainstorming
description: Turn a vague idea into an implementation-ready design before coding. Use when the user wants to explore a feature, behavior change, component, workflow, or system design.
---

# Brainstorming

Use collaborative discussion to turn rough ideas into a clear design.

Do not implement, scaffold, or edit code until you have presented a design and the user has approved it. Keep the process lightweight for small tasks and more structured for larger ones.

## Workflow

1. Explore the local context first.
2. Ask clarifying questions one at a time.
3. If the request is too broad, decompose it into smaller pieces before refining details.
4. Propose 2-3 reasonable approaches with trade-offs.
5. Recommend one approach and explain why.
6. Present a concrete design and get approval before implementation.

## Explore Context

- Check the current codebase, docs, and nearby patterns before proposing solutions.
- Prefer existing conventions, utilities, and structure over inventing new patterns.
- Stay focused on the user's goal. Do not expand scope with unrelated refactors.

## Ask Good Questions

- Ask only one question per message.
- Prefer multiple choice when it helps the user answer quickly.
- Focus on purpose, constraints, risks, and success criteria.
- If a topic needs depth, break it into a sequence of small questions.

## Propose Approaches

- Offer 2-3 distinct approaches when there is a real decision to make.
- Lead with the recommended option.
- Explain trade-offs in practical terms: complexity, flexibility, maintenance, user impact, and delivery speed.
- If there is one clearly correct approach, say so instead of inventing weak alternatives.

## Present The Design

Present a design scaled to the task:

- Small task: a few sentences may be enough.
- Medium or large task: cover architecture, components, data flow, error handling, and verification.

Good designs are:

- Clear about what will change
- Broken into small, understandable parts
- Explicit about boundaries and dependencies
- Consistent with the existing codebase

After presenting the design, ask for approval or corrections before moving on.

## Scope Control

- If the user asks for multiple subsystems at once, identify that early.
- Help split oversized work into smaller projects or phases.
- Brainstorm the next smallest useful slice first.

## Saving Output

- Do not assume brainstorming output should be saved to the repository.
- If written output would be useful, ask the user whether they want it saved and where.
- When saving is requested, use Cursor's available tools to create or update the file.

## Principles

- One question at a time
- Understand before proposing
- Prefer boring, obvious designs
- Keep scope tight
- Reuse existing patterns
- Get approval before implementation
