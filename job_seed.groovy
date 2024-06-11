pipelineJob('Seed')
{
    definition
    {
        cpsScm
        {
            scm
            {
                git
                {
                    remote { url('https://github.com/ChimpDelivery/ChimpDelivery-JenkinsDSL') }
                    branch('*/master')
                }
            }
            lightweight()
        }
    }
}
