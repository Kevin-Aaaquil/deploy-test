import express from "express";
import cors from "cors";
import helmet from "helmet";
import config from "./config";

(async () => {
  const app = express();

  app
    .use(cors())
    .use(helmet())
    .use(express.json())
    .use(express.urlencoded({ extended: true }));

    app.get("/", (req, res) => {
        res.send('It works!');
    });

  const port = config.PORT;
  app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
  });
})();