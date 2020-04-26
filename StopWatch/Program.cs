using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StopWatch
{

    public class StopWatch
    {

        private bool         progessFlg;
        private DateTime?    _startTime;
        private TimeSpan?    _endTime;


        public StopWatch()
        {
            this.progessFlg = false;
        }

        public void Start()
        {

            if (progessFlg == true)
            {
                Console.WriteLine("process done");
            }
            else
            {
                progessFlg = true;
                _startTime = DateTime.Now;
            }


        }

        public TimeSpan? Stop()
        {

            progessFlg = false;
            _endTime = DateTime.Now - _startTime;
            return _endTime;
        }



    }




    class Program
    {

        static void Main()
        {
            int InputNo;


            try
            {
                Console.WriteLine("******START STOPWATCH******");

                var sw = new StopWatch();

                do
                {
                    Console.WriteLine("Start:1 Stop:2 End:3");

                    InputNo = int.Parse(Console.ReadLine());

                    switch (InputNo)
                    {
                        case 1 :
                            sw.Start();
                            break;
                        case 2 :
                            Console.WriteLine(sw.Stop().ToString());
                            break;
                        default:
                            Console.WriteLine("Please input Number 1-3");
                            break;
                    }


                } while (InputNo != 3);

            }
            catch (FormatException)
            {
                Console.WriteLine("Please input Number 1-3");
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                Console.WriteLine("******END STOPWATCH******");
            }

        }
    }
}
