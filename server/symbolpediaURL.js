Meteor.startup(() => {
  if (process.env.SYMBOLPEDIA_URL !== '') {
    Meteor.settings.public.SYMBOLPEDIA_URL = process.env.SYMBOLPEDIA_URL;
  }
});
