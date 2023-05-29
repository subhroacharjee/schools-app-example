npm i
dart pub global activate mason_cli
mason add -g app --git-url https://github.com/MathGaps/core-dart --git-path bricks/app
mason make app --name schools-app
helm dep build charts/schools-app