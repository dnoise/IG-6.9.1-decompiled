.class public final Landroid/support/v4/app/ay;
.super Landroid/support/v4/app/bk;
.source "NotificationCompat.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1265
    invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V

    .line 1266
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1268
    invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V

    .line 1269
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ay;->a(Landroid/support/v4/app/ba;)V

    .line 1270
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ay;
    .locals 0
    .parameter

    .prologue
    .line 1294
    iput-object p1, p0, Landroid/support/v4/app/ay;->a:Landroid/graphics/Bitmap;

    .line 1295
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ay;
    .locals 1
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Landroid/support/v4/app/ay;->f:Ljava/lang/CharSequence;

    .line 1286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ay;->g:Z

    .line 1287
    return-object p0
.end method
