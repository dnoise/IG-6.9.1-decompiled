.class public final enum Lcom/instagram/feed/d/c;
.super Ljava/lang/Enum;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/feed/d/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/feed/d/c;

.field public static final enum b:Lcom/instagram/feed/d/c;

.field public static final enum c:Lcom/instagram/feed/d/c;

.field public static final enum d:Lcom/instagram/feed/d/c;

.field public static final enum e:Lcom/instagram/feed/d/c;

.field public static final enum f:Lcom/instagram/feed/d/c;

.field private static final synthetic g:[Lcom/instagram/feed/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/instagram/feed/d/c;

    const-string v1, "Unposted"

    invoke-direct {v0, v1, v3}, Lcom/instagram/feed/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/feed/d/c;->a:Lcom/instagram/feed/d/c;

    .line 90
    new-instance v0, Lcom/instagram/feed/d/c;

    const-string v1, "Failure"

    invoke-direct {v0, v1, v4}, Lcom/instagram/feed/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/feed/d/c;->b:Lcom/instagram/feed/d/c;

    .line 91
    new-instance v0, Lcom/instagram/feed/d/c;

    const-string v1, "Posting"

    invoke-direct {v0, v1, v5}, Lcom/instagram/feed/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/feed/d/c;->c:Lcom/instagram/feed/d/c;

    .line 92
    new-instance v0, Lcom/instagram/feed/d/c;

    const-string v1, "Deleted"

    invoke-direct {v0, v1, v6}, Lcom/instagram/feed/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/feed/d/c;->d:Lcom/instagram/feed/d/c;

    .line 93
    new-instance v0, Lcom/instagram/feed/d/c;

    const-string v1, "DeletePending"

    invoke-direct {v0, v1, v7}, Lcom/instagram/feed/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;

    .line 94
    new-instance v0, Lcom/instagram/feed/d/c;

    const-string v1, "Success"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/instagram/feed/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/instagram/feed/d/c;

    sget-object v1, Lcom/instagram/feed/d/c;->a:Lcom/instagram/feed/d/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/feed/d/c;->b:Lcom/instagram/feed/d/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/feed/d/c;->c:Lcom/instagram/feed/d/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/feed/d/c;->d:Lcom/instagram/feed/d/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/feed/d/c;->g:[Lcom/instagram/feed/d/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/feed/d/c;
    .locals 1
    .parameter "name"

    .prologue
    .line 88
    const-class v0, Lcom/instagram/feed/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/c;

    return-object v0
.end method

.method public static values()[Lcom/instagram/feed/d/c;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/instagram/feed/d/c;->g:[Lcom/instagram/feed/d/c;

    invoke-virtual {v0}, [Lcom/instagram/feed/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/feed/d/c;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/instagram/feed/d/c;->d:Lcom/instagram/feed/d/c;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
