// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package android.support.v4.app:
//            ah, aj

public abstract class ai extends Binder
    implements ah
{

    public static ah a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
        if (iinterface != null && (iinterface instanceof ah))
        {
            return (ah)iinterface;
        } else
        {
            return new aj(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("android.support.v4.app.INotificationSideChannel");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
            String s = parcel.readString();
            int k = parcel.readInt();
            String s1 = parcel.readString();
            Notification notification;
            if (parcel.readInt() != 0)
            {
                notification = (Notification)Notification.CREATOR.createFromParcel(parcel);
            } else
            {
                notification = null;
            }
            a(s, k, s1, notification);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
            a(parcel.readString(), parcel.readInt(), parcel.readString());
            return true;

        case 3: // '\003'
            parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
            a(parcel.readString());
            return true;
        }
    }
}
