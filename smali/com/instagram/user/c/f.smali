.class public final enum Lcom/instagram/user/c/f;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/user/c/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/user/c/f;

.field public static final enum b:Lcom/instagram/user/c/f;

.field public static final enum c:Lcom/instagram/user/c/f;

.field private static final synthetic d:[Lcom/instagram/user/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    new-instance v0, Lcom/instagram/user/c/f;

    const-string v1, "PrivacyStatusUnknown"

    invoke-direct {v0, v1, v2}, Lcom/instagram/user/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/user/c/f;->a:Lcom/instagram/user/c/f;

    .line 285
    new-instance v0, Lcom/instagram/user/c/f;

    const-string v1, "PrivacyStatusPublic"

    invoke-direct {v0, v1, v3}, Lcom/instagram/user/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    .line 286
    new-instance v0, Lcom/instagram/user/c/f;

    const-string v1, "PrivacyStatusPrivate"

    invoke-direct {v0, v1, v4}, Lcom/instagram/user/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    .line 283
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/user/c/f;

    sget-object v1, Lcom/instagram/user/c/f;->a:Lcom/instagram/user/c/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/user/c/f;->b:Lcom/instagram/user/c/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/user/c/f;->d:[Lcom/instagram/user/c/f;

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
    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/user/c/f;
    .locals 1
    .parameter "name"

    .prologue
    .line 283
    const-class v0, Lcom/instagram/user/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/f;

    return-object v0
.end method

.method public static values()[Lcom/instagram/user/c/f;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/instagram/user/c/f;->d:[Lcom/instagram/user/c/f;

    invoke-virtual {v0}, [Lcom/instagram/user/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/user/c/f;

    return-object v0
.end method
