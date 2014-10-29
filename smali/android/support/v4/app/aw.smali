.class public final Landroid/support/v4/app/aw;
.super Landroid/support/v4/app/bo;
.source "NotificationCompat.java"


# static fields
.field public static final d:Landroid/support/v4/app/bp;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Landroid/support/v4/app/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1709
    new-instance v0, Landroid/support/v4/app/ax;

    invoke-direct {v0}, Landroid/support/v4/app/ax;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->d:Landroid/support/v4/app/bp;

    return-void
.end method

.method private f()[Landroid/support/v4/app/cj;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Landroid/support/v4/app/aw;->f:[Landroid/support/v4/app/cj;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 1470
    iget v0, p0, Landroid/support/v4/app/aw;->a:I

    return v0
.end method

.method protected final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/support/v4/app/aw;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected final c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/support/v4/app/aw;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Landroid/support/v4/app/aw;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final synthetic e()[Landroid/support/v4/app/cr;
    .locals 1

    .prologue
    .line 1437
    invoke-direct {p0}, Landroid/support/v4/app/aw;->f()[Landroid/support/v4/app/cj;

    move-result-object v0

    return-object v0
.end method
