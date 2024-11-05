# Streamlit App Boilerplate

A boilerplate for building Streamlit apps, a well-structured folder layout.

## Features
- **Project Management**: Uses `hatch` for seamless environment and dependency management.
- **Optimized Folder Structure**: Organized under `src` to keep the codebase clean and maintainable.
- **Makefile**: Simplifies common tasks like running the app, formatting, linting, and testing.

## Folder Structure
```
streamlit_app/
├── Makefile
├── pyproject.toml
└── src/
    ├── __init__.py
    ├── main.py
    ├── app/
    │   ├── __init__.py
    │   ├── components/
    │   │   ├── __init__.py
    │   │   └── sample_component.py
    │   ├── pages/
    │   │   ├── __init__.py
    │   │   └── home.py
    │   └── utils/
    │       ├── __init__.py
    │       └── helper.py
    └── config/
        ├── __init__.py
        └── settings.py
```

## Getting Started

### Prerequisites
- Python 3.10 or higher
- `hatch` for environment management: Install with `pip install hatch`

### Setup Instructions
1. **Clone the repository**:
   ```bash
   git clone <your-repo-url>
   cd streamlit_app
   ```

2. **Create and activate the environment**:
   ```bash
   make dev
   ```

3. **Run the app**:
   ```bash
   make run
   ```

## Development

### Useful Commands
- **Start the app**:
  ```bash
  make run
  ```
- **Format code**:
  ```bash
  make fmt
  ```
- **Lint code with Flake8**:
  ```bash
  make lint
  ```
- **Run tests with Pytest**:
  ```bash
  make test
  ```

## Configuration
- **Settings**: Customize your app settings in `src/config/settings.py`.
- **Environment Variables**: Use environment variables for sensitive data.

## Contributing
1. Fork the repo.
2. Create your feature branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/my-feature`
5. Open a pull request.
