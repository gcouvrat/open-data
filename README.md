# open-data

# dbt and DuckDB Development Environment with Devcontainer

This project provides a ready-to-use development environment for working with dbt and DuckDB using VS Code Devcontainers.

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running.
- [Visual Studio Code](https://code.visualstudio.com/) installed.
- [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) installed in VS Code.

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone <your-repository-url>
    cd <your-repository-name>
    ```

2.  **Open in Devcontainer:**
    *   Open the cloned repository folder in VS Code.
    *   VS Code should automatically detect the `.devcontainer/devcontainer.json` configuration and prompt you to "Reopen in Container". Click on it.
    *   If you don't see the prompt, open the Command Palette (Ctrl+Shift+P or Cmd+Shift+P) and type/select "Dev Containers: Reopen in Container".

    This will build the Docker image (if it's the first time) and start the devcontainer. This might take a few minutes.

3.  **Verify the Environment:**
    *   Once the devcontainer is up and running, open a new terminal within VS Code (Terminal > New Terminal).
    *   Check dbt installation:
        ```bash
        dbt --version
        ```
        You should see the installed versions of dbt-core and dbt-duckdb.
    *   Check Python and pip:
        ```bash
        python --version
        pip --version
        ```
    *   The VS Code extensions `ms-python.python`, `innoverio.vscode-dbt-power-user`, and `ms-azuretools.vscode-docker` should be installed and active.

## Using the Sample dbt Project

A sample dbt project is included in the `sample_dbt_project` directory.

1.  **Navigate to the dbt project directory:**
    In the VS Code terminal:
    ```bash
    cd sample_dbt_project
    ```

2.  **Test dbt connection (optional but recommended):**
    The `profiles.yml` is configured to use an in-memory DuckDB database.
    ```bash
    dbt debug
    ```
    This command will test the connection to your database. You should see "OK connection ok" for your profile.

3.  **Run your dbt models:**
    ```bash
    dbt run
    ```
    This will execute the sample model (`my_first_model.sql`). Since it's an in-memory database, the data will be available for the current session.

4.  **Explore dbt commands:**
    *   `dbt compile`: Compiles your project.
    *   `dbt test`: Runs any tests defined in your project.
    *   Explore the dbt Power User extension features for more integrated dbt development.

## Customizing the dbt Project

-   Modify `sample_dbt_project/dbt_project.yml` to change project settings.
-   Edit `sample_dbt_project/profiles.yml` to connect to a different DuckDB database file or other database types (you'll need to install the corresponding dbt adapter).
-   Add your own models to the `sample_dbt_project/models` directory.

## Devcontainer Configuration

-   **`.devcontainer/devcontainer.json`**: Defines the devcontainer setup, including the Dockerfile to use, VS Code extensions to install, and post-creation commands.
-   **`.devcontainer/Dockerfile`**: Specifies the base Docker image (Python 3.10) and system-level dependencies.
-   **`.devcontainer/requirements.txt`**: Lists Python packages (`dbt-core`, `dbt-duckdb`, `duckdb`) to be installed in the environment.

This setup provides a consistent and reproducible environment for your dbt and DuckDB projects.
