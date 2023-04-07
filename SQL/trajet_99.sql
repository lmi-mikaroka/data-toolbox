select idpos,geom_spatial 
from recalibration.prepa_predict_etat 
inner join recalibration.etat_predit using (idpos)  where no_trajet=99