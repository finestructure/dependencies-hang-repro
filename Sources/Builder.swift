import DocUploadBundle


enum Builder {
    public static func main() async {
        let repo = DocUploadBundle.Repository(owner: "owner", name: "repo")
        print("Creating doc bundle...")
        let bundle = DocUploadBundle(sourcePath: "source",
                                     bucket: "awsBucketName",
                                     repository: repo,
                                     reference: "reference",
                                     apiBaseURL: "apiBaseURL",
                                     apiToken: "apiToken",
                                     buildId: .init(),
                                     docArchives: [],
                                     fileCount: 12,
                                     linkablePathsCount: 23,
                                     mbSize: 56)
        print("doc bundle:", bundle)
    }
}
