# Comment Contribuer votre PR #2 au Dépôt Original frappe/insights

Votre PR #2 "fix: prevent cleanup of non-existing Insights Folder" est actuellement dans votre fork `mterceno/insights`. Pour la soumettre au dépôt original `frappe/insights`, suivez ces étapes :

## Méthode 1 : Via l'Interface GitHub (Recommandée)

### Étape 1 : Accédez à votre PR
Visitez : https://github.com/mterceno/insights/pull/2

### Étape 2 : Créez une PR vers le dépôt upstream
1. Sur la page de votre PR #2, GitHub devrait afficher un message vous proposant de créer une Pull Request vers le dépôt parent (frappe/insights)
2. Cliquez sur le bouton "**Compare across forks**" ou "**Compare & pull request**"
3. Configurez la Pull Request :
   - **Base repository** : `frappe/insights`
   - **Base branch** : `develop` (ou la branche principale de frappe/insights)
   - **Head repository** : `mterceno/insights`
   - **Compare branch** : `fix-on-delete-workbook-with-folders-v2`

### Étape 3 : Soumettez la Pull Request
1. Vérifiez que le titre et la description sont clairs :
   - **Titre** : "fix: prevent cleanup of non-existing Insights Folder"
   - **Description** : Expliquez le problème et votre solution
2. Cliquez sur "**Create pull request**"
3. Votre PR sera maintenant visible sur https://github.com/frappe/insights/pulls

## Méthode 2 : Via la Ligne de Commande

### Option A : En utilisant GitHub CLI (gh)

```bash
# 1. Installez GitHub CLI si nécessaire
# https://cli.github.com/

# 2. Authentifiez-vous
gh auth login

# 3. Créez une PR vers le dépôt upstream
gh pr create --repo frappe/insights \
  --title "fix: prevent cleanup of non-existing Insights Folder" \
  --body "When deleting multiple workbooks simultaneously, the system sometimes crashes during the deletion of a folder that no longer exists. This fix prevents the 'Folder not found' error." \
  --head mterceno:fix-on-delete-workbook-with-folders-v2 \
  --base develop
```

### Option B : Via l'interface Web GitHub

1. **Naviguez vers le dépôt upstream** : https://github.com/frappe/insights
2. Cliquez sur l'onglet "**Pull requests**"
3. Cliquez sur "**New pull request**"
4. Cliquez sur "**compare across forks**"
5. Sélectionnez :
   - Base repository : `frappe/insights` base : `develop`
   - Head repository : `mterceno/insights` compare : `fix-on-delete-workbook-with-folders-v2`
6. Cliquez sur "**Create pull request**"
7. Remplissez les détails et soumettez

## Informations sur votre PR #2

- **Titre** : fix: prevent cleanup of non-existing Insights Folder
- **Branche source** : `mterceno:fix-on-delete-workbook-with-folders-v2`
- **Modifications** :
  - 2 fichiers modifiés
  - 5 ajouts
  - 0 suppressions
- **Description** : Corrige une erreur "Folder not found" lors de la suppression simultanée de plusieurs workbooks

## Checklist Avant de Soumettre

- [ ] Assurez-vous que votre branche est à jour avec la branche `develop` de frappe/insights
- [ ] Vérifiez que tous les tests passent dans votre fork
- [ ] Assurez-vous que votre code suit les conventions du projet
- [ ] Documentez les changements si nécessaire
- [ ] Liez les issues pertinentes dans la description de la PR

## Synchroniser votre Fork avec l'Upstream (Optionnel mais Recommandé)

Avant de créer la PR, il est bon de synchroniser votre fork avec le dépôt upstream :

```bash
# Ajoutez le dépôt upstream comme remote (une seule fois)
git remote add upstream https://github.com/frappe/insights.git

# Récupérez les dernières modifications
git fetch upstream

# Mettez à jour votre branche develop
git checkout develop
git merge upstream/develop
git push origin develop

# Rebasez votre branche de feature (optionnel)
git checkout fix-on-delete-workbook-with-folders-v2
git rebase develop
git push --force-with-lease origin fix-on-delete-workbook-with-folders-v2
```

## Après la Soumission

1. Les mainteneurs de frappe/insights examineront votre PR
2. Ils peuvent demander des modifications - soyez prêt à y répondre
3. Une fois approuvée, votre PR sera fusionnée dans le dépôt principal
4. Vous pouvez suivre la progression sur : https://github.com/frappe/insights/pulls

## Ressources Utiles

- Guide de contribution GitHub : https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork
- Documentation frappe/insights : https://github.com/frappe/insights
- Votre PR dans le fork : https://github.com/mterceno/insights/pull/2

## Besoin d'Aide ?

Si vous rencontrez des difficultés :
1. Consultez la documentation de contribution du projet frappe/insights (s'il existe un fichier CONTRIBUTING.md)
2. Demandez de l'aide sur les forums de la communauté Frappe
3. Contactez les mainteneurs via GitHub Issues ou Discussions
