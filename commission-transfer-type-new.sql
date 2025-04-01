-- p2w
-- H2WIT            HUMO.IYB          WALLET                      p2w
-- H2WIT            HUMO              WALLET                      p2w
-- H2WI             HUMO.IYB          WALLET                      p2w
-- H2WI             HUMO              WALLET                      p2w
-- P2WI             UZCARD.IYB        WALLET                      p2w
-- P2WE             UZCARD            WALLET                      p2w
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'p2w'
WHERE (source LIKE 'HUMO%' AND destination LIKE 'WALLET%')
   OR (source LIKE 'UZCARD%' AND destination LIKE 'WALLET%');
 
-- p2p
-- Defined in IYM-8435.sql
 
-- p2l
-- EXCEPTION        VISASUM.CRD       LOAN                        p2l
-- H2LI             HUMO.IYB          LOAN.SAME_MFO               p2l
-- H2LE             HUMO.IYB          LOAN                        p2l
-- H2LO             HUMO              LOAN                        p2l
-- P2LI             UZCARD.IYB        LOAN.SAME_MFO               p2l
-- P2LE             UZCARD.IYB        LOAN                        p2l
-- P2LO             UZCARD            LOAN                        p2l
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'p2l'
WHERE (source LIKE 'HUMO%' AND destination LIKE 'LOAN%')
   OR (source LIKE 'UZCARD%' AND destination LIKE 'LOAN%')
   OR (source LIKE 'VISASUM%' AND destination LIKE 'LOAN%');
 
-- p2d
-- EXCEPTION        VISASUM.CRD       DEPOSIT                     p2d
-- EXCEPTION        VISASUM.CRD       DEPOSIT.NEW                 p2d
-- V2DI             VISASUM           DEPOSIT                     p2d
-- VNDI             VISASUM           DEPOSIT.NEW                 p2d
-- H2DI             HUMO              DEPOSIT                     p2d
-- H2DE             HUMO.IYB          DEPOSIT                     p2d
-- H2DI             HUMO.IYB          DEPOSIT.SAME_MFO            p2d
-- P2DO             UZCARD            DEPOSIT                     p2d
-- P2DE             UZCARD.IYB        DEPOSIT                     p2d
-- P2DI             UZCARD.IYB        DEPOSIT.SAME_MFO            p2d
-- HNDI             HUMO              DEPOSIT.NEW                 p2d
-- HNDI             HUMO.IYB          DEPOSIT.NEW                 p2d
-- PNDO             UZCARD            DEPOSIT.NEW                 p2d
-- PNDI             UZCARD.IYB        DEPOSIT.NEW                 p2d
-- PNDI             UZCARD.IYB        DEPOSIT.NEW.SAME_MFO        p2d
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'p2d'
WHERE (source LIKE 'HUMO%' AND destination LIKE 'DEPOSIT%')
   OR (source LIKE 'UZCARD%' AND destination LIKE 'DEPOSIT%')
   OR (source LIKE 'VISASUM%' AND destination LIKE 'DEPOSIT%');
 
-- p2s
-- P2M              VISASUM.CRD       CLICK                       p2s
-- P2M              VISASUM.CRD       BEELINE                     p2s
-- P2M              VISASUM.CRD       UCELL                       p2s
-- P2M              VISASUM.CRD       PAYNET                      p2s
-- P2M              UZCARD            SVGATE                      p2s
-- P2M              VISASUM           CLICK                       p2s
-- P2M              HUMO              CLICK                       p2s
-- P2M              UZCARD            CLICK                       p2s
-- P2M              VISASUM           BEELINE                     p2s
-- P2M              HUMO              BEELINE                     p2s
-- P2M              UZCARD            BEELINE                     p2s
-- P2M              HUMO              UCELL                       p2s
-- P2M              VISASUM           UCELL                       p2s
-- P2M              UZCARD            UCELL                       p2s
-- P2M              HUMO              PAYNET                      p2s
-- P2M              VISASUM           PAYNET                      p2s
-- P2M              UZCARD            PAYNET                      p2s
-- P2M              UZCARD            UPAY                        p2s
-- H2MN             HUMO              MUNIS                       p2s
-- H2M              HUMO.IYB          MUNIS                       p2s
-- P2MN             UZCARD            MUNIS                       p2s
-- P2M              UZCARD.IYB        MUNIS                       p2s
-- PATTO            UZCARD            ATTO                        p2s
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'p2s'
WHERE (source LIKE 'HUMO%' AND destination IN ('CLICK','BEELINE','UCELL','PAYNET','SVGATE','UPAY','MUNIS','ATTO'))
   OR (source LIKE 'UZCARD%' AND destination IN ('CLICK','BEELINE','UCELL','PAYNET','SVGATE','UPAY','MUNIS','ATTO'))
   OR (source LIKE 'VISASUM%' AND destination IN ('CLICK','BEELINE','UCELL','PAYNET','SVGATE','UPAY','MUNIS','ATTO'));
 
-- vcp
-- EXCEPTION        VISA              VISASUM.CRD                 vcp
-- CVVI             VISA              VISASUM                     vcp
-- CPVIHSTC         VISA              HUMO                        vcp
-- CPVI             VISA              UZCARD                      vcp
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'vcp'
WHERE (source LIKE 'VISA.%' AND destination LIKE 'VISASUM%')
   OR (source LIKE 'VISA.%' AND destination LIKE 'HUMO%')
   OR (source LIKE 'VISA.%' AND destination LIKE 'UZCARD%');
 
-- pcv
-- EXCEPTION        VISASUM.CRD       VISA                        pcv
-- VCVIF            VISASUM           VISA                        pcv
-- HCVI             HUMO.IYB          VISA                        pcv
-- PCVI             UZCARD.IYB        VISA                        pcv
-- PCVO             UZCARD            VISA                        pcv
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'pcv'
WHERE (source LIKE 'VISASUM%' AND destination LIKE 'VISA.%')
   OR (source LIKE 'HUMO%' AND destination LIKE 'VISA.%')
   OR (source LIKE 'UZCARD%' AND destination LIKE 'VISA.%');
 
-- w2p
-- W2PET            WALLET            UZCARD.IYB                  w2p
-- W2PIHSTC         WALLET            HUMO.IYB.SAME_MFO           w2p
-- W2PEHSTC         WALLET            HUMO.IYB                    w2p
-- EXCEPTION        WALLET            HUMO                        w2p
-- W2PI             WALLET            UZCARD.IYB.SAME_MFO         w2p
-- W2PE             WALLET            UZCARD.IYB                  w2p
-- W2PO             WALLET            UZCARD                      w2p
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'w2p'
WHERE (source LIKE 'WALLET%' AND destination LIKE 'UZCARD%')
   OR (source LIKE 'WALLET%' AND destination LIKE 'HUMO%')
   OR (source LIKE 'WALLET%' AND destination LIKE 'VISASUM%');
 
-- a2d
-- A2DE             ACCOUNT           DEPOSIT                     a2d
-- A2DI             ACCOUNT           DEPOSIT.SAME_MFO            a2d
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'a2d'
WHERE (source LIKE 'ACCOUNT%' AND destination LIKE 'DEPOSIT%');
 
-- w2d
-- DCL              WALLET            DEPOSIT.CLOSE.SAME_MFO      w2d
-- D2AI             WALLET            DEPOSIT.WITHDRAWAL.SAME_MFO w2d
-- W2DE             WALLET            DEPOSIT                     w2d
-- W2DI             WALLET            DEPOSIT.SAME_MFO            w2d
-- WND              WALLET            DEPOSIT.NEW                 w2d
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'w2d'
WHERE (source LIKE 'WALLET%' AND destination LIKE 'DEPOSIT%');
 
-- a2a
-- A2AEXCH          ACCOUNT.USD       ACCOUNT.CHF.SAME_MFO        a2a
-- A2AEXCH          ACCOUNT.CHF       ACCOUNT.USD.SAME_MFO        a2a
-- A2AI             ACCOUNT.RUB       ACCOUNT.RUB.SAME_MFO        a2a
-- A2AE             ACCOUNT.RUB       ACCOUNT.RUB                 a2a
-- A2AEXCH          ACCOUNT.RUB       ACCOUNT.USD.SAME_MFO        a2a
-- EXCEPTION        ACCOUNT.RUB       ACCOUNT.USD                 a2a
-- A2AI             ACCOUNT.GBP       ACCOUNT.GBP.SAME_MFO        a2a
-- A2AE             ACCOUNT.GBP       ACCOUNT.GBP                 a2a
-- A2AEXCH          ACCOUNT.GBP       ACCOUNT.USD.SAME_MFO        a2a
-- EXCEPTION        ACCOUNT.GBP       ACCOUNT.USD                 a2a
-- A2AI             ACCOUNT.EUR       ACCOUNT.EUR.SAME_MFO        a2a
-- A2AE             ACCOUNT.EUR       ACCOUNT.EUR                 a2a
-- A2AEXCH          ACCOUNT.EUR       ACCOUNT.USD.SAME_MFO        a2a
-- EXCEPTION        ACCOUNT.EUR       ACCOUNT.USD                 a2a
-- A2AEXCH          ACCOUNT.USD       ACCOUNT.GBP.SAME_MFO        a2a
-- EXCEPTION        ACCOUNT.USD       ACCOUNT.GBP                 a2a
-- A2AEXCH          ACCOUNT.USD       ACCOUNT.RUB.SAME_MFO        a2a
-- EXCEPTION        ACCOUNT.USD       ACCOUNT.RUB                 a2a
-- A2AEXCH          ACCOUNT.USD       ACCOUNT.EUR.SAME_MFO        a2a
-- EXCEPTION        ACCOUNT.USD       ACCOUNT.EUR                 a2a
-- A2AI             ACCOUNT.USD       ACCOUNT.USD.SAME_MFO        a2a
-- A2AE             ACCOUNT.USD       ACCOUNT.USD                 a2a
-- A2AEXCH          ACCOUNT.UZS       ACCOUNT.RUB.SAME_MFO        a2a
-- EXCEPTION        ACCOUNT.UZS       ACCOUNT.RUB                 a2a
-- A2AI             ACCOUNT.UZS       ACCOUNT.UZS.SAME_MFO        a2a
-- A2AE             ACCOUNT.UZS       ACCOUNT.UZS                 a2a
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'a2a'
WHERE (source LIKE 'ACCOUNT%' AND destination LIKE 'ACCOUNT%');
 
-- w2l
-- W2LI             WALLET            LOAN.SAME_MFO               w2l
-- W2LE             WALLET            LOAN                        w2l
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'w2l'
WHERE (source LIKE 'WALLET%' AND destination LIKE 'LOAN%');
 
-- w2a
-- W2AI             WALLET            ACCOUNT.UZS.SAME_MFO        w2a
-- W2AE             WALLET            ACCOUNT.UZS                 w2a
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'w2a'
WHERE (source LIKE 'WALLET%' AND destination LIKE 'ACCOUNT%');
 
-- w2w
-- W2WI             WALLET            WALLET.SAME_MFO             w2w
-- W2WE             WALLET            WALLET                      w2w
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'w2w'
WHERE (source LIKE 'WALLET%' AND destination LIKE 'WALLET%');
 
-- wcv
-- WCV              WALLET            VISA                        wcv
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'wcv'
WHERE (source LIKE 'WALLET%' AND destination LIKE 'VISA.%');
 
-- a2v
-- A2VI             ACCOUNT.USD       VISA.SAME_MFO               a2v
-- A2VE             ACCOUNT.USD       VISA                        a2v
-- EXCEPTION        ACCOUNT.UZS       VISA                        a2v
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'a2v'
WHERE (source LIKE 'ACCOUNT%' AND destination LIKE 'VISA.%');
 
-- a2l
-- A2LI             ACCOUNT.UZS       LOAN.SAME_MFO               a2l
-- A2LE             ACCOUNT.UZS       LOAN                        a2l
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'a2l'
WHERE (source LIKE 'ACCOUNT%' AND destination LIKE 'LOAN%');
 
-- a2w
-- A2WI             ACCOUNT.UZS       WALLET.SAME_MFO             a2w
-- A2WE             ACCOUNT.UZS       WALLET                      a2w
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'a2w'
WHERE (source LIKE 'ACCOUNT%' AND destination LIKE 'WALLET%');
 
-- a2p
-- A2PIHSTC         ACCOUNT.UZS       HUMO.IYB.SAME_MFO           a2p
-- A2PEHSTC         ACCOUNT.UZS       HUMO.IYB                    a2p
-- EXCEPTION        ACCOUNT.UZS       HUMO                        a2p
-- A2PI             ACCOUNT.UZS       UZCARD.IYB.SAME_MFO         a2p
-- A2PE             ACCOUNT.UZS       UZCARD.IYB                  a2p
-- EXCEPTION        ACCOUNT.UZS       UZCARD                      a2p
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'a2p'
WHERE (source LIKE 'ACCOUNT%' AND destination LIKE 'HUMO%')
   OR (source LIKE 'ACCOUNT%' AND destination LIKE 'UZCARD%')
   OR (source LIKE 'ACCOUNT%' AND destination LIKE 'VISASUM%');
 
-- v2a
-- V2AI             VISA              ACCOUNT.USD.SAME_MFO        v2a
-- V2AE             VISA              ACCOUNT.USD                 v2a
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'v2a'
WHERE (source LIKE 'VISA.%' AND destination LIKE 'ACCOUNT%');
 
-- v2v
-- P2PVF0           VISA              VISA.SAME_OWNER             v2v
-- P2PV             VISA              VISA                        v2v
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'v2v'
WHERE (source LIKE 'VISA.%' AND destination LIKE 'VISA.%');
 
-- p2a
-- H2AI             HUMO.IYB          ACCOUNT.UZS                 p2a
-- H2AI             HUMO              ACCOUNT.UZS                 p2a
-- P2AI             UZCARD.IYB        ACCOUNT.UZS.SAME_MFO        p2a
-- P2AE             UZCARD.IYB        ACCOUNT.UZS                 p2a
-- P2AO             UZCARD            ACCOUNT.UZS                 p2a
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'p2a'
WHERE (source LIKE 'HUMO%' AND destination LIKE 'ACCOUNT%')
   OR (source LIKE 'UZCARD%' AND destination LIKE 'ACCOUNT%')
   OR (source LIKE 'VISASUM%' AND destination LIKE 'ACCOUNT%');
 
-- p2v
-- HCVI             HUMO              VISA                        p2v
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'p2v'
WHERE (source LIKE 'HUMO%' AND destination LIKE 'VISA.%')
   OR (source LIKE 'UZCARD%' AND destination LIKE 'VISA.%')
   OR (source LIKE 'VISASUM%' AND destination LIKE 'VISA.%');
 
-- w2s
-- W2M              WALLET            MUNIS                       w2s
UPDATE COMMISSIONS
SET TRANSFER_TYPE = 'w2s'
WHERE (source LIKE 'WALLET%' AND destination IN ('CLICK','BEELINE','UCELL','PAYNET','SVGATE','UPAY','MUNIS','ATTO'));
