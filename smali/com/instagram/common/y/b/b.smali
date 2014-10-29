.class final Lcom/instagram/common/y/b/b;
.super Ljava/lang/Object;
.source "IgSystemClock.java"


# static fields
.field private static a:Lcom/instagram/common/y/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/instagram/common/y/b/a;

    invoke-direct {v0}, Lcom/instagram/common/y/b/a;-><init>()V

    sput-object v0, Lcom/instagram/common/y/b/b;->a:Lcom/instagram/common/y/b/a;

    return-void
.end method

.method static synthetic a()Lcom/instagram/common/y/b/a;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/instagram/common/y/b/b;->a:Lcom/instagram/common/y/b/a;

    return-object v0
.end method
