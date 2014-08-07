= hvnodeschool.github.io

Happy Valley Node School Web Site

== Contributing

The site use's github pages (jekyll) to generate a static site. This is done automatically on a git push from any committer with a verified email. In order to see changes locally before committing and pushing, you'll need to run the jekyll serve command. If you already have a ruby environment you can:
```bash
bundle install
jekyll serve --watch
```
We also provide a vagrant file that will provision a ruby environment and jekyll in a VM and run it for you:
```bash
vagrant up
```
The VM automatically runs jekyll serve --watch and port forwards 4000 to the host machine, you can see the site at http://localhost:4000/
